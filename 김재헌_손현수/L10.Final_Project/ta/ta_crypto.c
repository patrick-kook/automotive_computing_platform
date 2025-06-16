#include <tee_internal_api.h>
#include <tee_internal_api_extensions.h>
#include "ta.h"
#include <string.h>

#define MSGLEN   5
#define PRIVLEN  2
#define PUBLEN   3
#define SIGLEN   3

static void mini_hash24(const unsigned char *data, size_t len, unsigned char out[3]) {
    uint32_t h = 0xABCDEF;
    for (size_t i = 0; i < len; i++) {
        h ^= (uint32_t)data[i] + i * 13;
        h = (h << 5) | (h >> 27);
    }
    h &= 0xFFFFFF;
    out[0] = (h >> 16) & 0xFF;
    out[1] = (h >>  8) & 0xFF;
    out[2] =  h        & 0xFF;
}

static int is_prime(uint32_t x) {
    if (x < 2) return 0;
    for (uint32_t i = 2; i*i <= x; i++)
        if (x % i == 0) return 0;
    return 1;
}

static int32_t modinv32(int32_t e, int32_t phi) {
    int32_t t=0, newt=1, r=phi, newr=e;
    while (newr) {
        int32_t q = r/newr;
        int32_t tmp=newt; newt=t-q*newt; t=tmp;
        tmp=newr; newr=r-q*newr; r=tmp;
    }
    if (r>1) return -1;
    if (t<0) t+=phi;
    return t;
}

static uint32_t modexp(uint32_t b, uint32_t e, uint32_t m) {
    uint64_t r=1, base=b%m;
    while (e) {
        if (e&1) r=(r*base)%m;
        base=(base*base)%m;
        e>>=1;
    }
    return (uint32_t)r;
}

static void derive_rsa(const unsigned char priv[2], uint32_t *n, uint32_t *d) {
    uint32_t seed = (priv[0] << 8) | priv[1];

    while (1) {
        uint32_t p = ((seed >> 4) & 0x0FFF) | 0x0800;
        while (!is_prime(p)) p++;
        uint32_t q = (seed & 0x0FFF) | 0x0800;
        while (!is_prime(q)) q++;

        if (p == q) {
            seed++;
            continue;
        }

        *n = p * q;
        uint32_t phi = (p - 1) * (q - 1);
        int32_t dinv = modinv32(17, phi);

        if (dinv != -1) {
            *d = (uint32_t)dinv;
            break;
        }

        // 실패하면 seed를 변경해서 다시 시도
        seed++;
    }
}

TEE_Result generate_public_key(TEE_Param params[4])
{
    TEE_ObjectHandle obj;
    TEE_ObjectInfo object_info;
    
    unsigned char *private_key;
    unsigned char *public_key;
    size_t pub_len = 3;
    public_key = TEE_Malloc(pub_len, 0);
    
    TEE_OpenPersistentObject(TEE_STORAGE_PRIVATE,
                                   "private_key", strlen("private_key"),
                                   TEE_DATA_FLAG_ACCESS_READ,
                                   &obj);
    TEE_GetObjectInfo1(obj, &object_info);

    private_key = TEE_Malloc(object_info.dataSize, 0);
    size_t bytes_read = 0;
    TEE_ReadObjectData(obj, private_key, object_info.dataSize, &bytes_read);

    uint32_t n,d;
    derive_rsa(private_key, &n, &d);
    public_key[0] = (n>>16)&0xFF;
    public_key[1] = (n>>8 )&0xFF;
    public_key[2] =  n      &0xFF;

    TEE_MemMove(params[0].memref.buffer, public_key, pub_len);
    params[0].memref.size = pub_len;

    TEE_CloseObject(obj);
    TEE_Free(private_key);
    TEE_Free(public_key);
    return TEE_SUCCESS;
}

TEE_Result micro_sign(TEE_Param params[4]) {
    TEE_ObjectHandle obj;
    TEE_ObjectInfo object_info;

    unsigned char *message = params[0].memref.buffer;
    unsigned char private_key[2];
    unsigned char signature[3];

    TEE_OpenPersistentObject(TEE_STORAGE_PRIVATE,
                                   "private_key", strlen("private_key"),
                                   TEE_DATA_FLAG_ACCESS_READ,
                                   &obj);
    TEE_GetObjectInfo1(obj, &object_info);

    size_t bytes_read = 0;
    TEE_ReadObjectData(obj, private_key, object_info.dataSize, &bytes_read);


    unsigned char h24[3];
    mini_hash24(message, MSGLEN, h24);
    uint32_t n, d;
    derive_rsa(private_key, &n, &d);
    uint32_t hval  = (h24[0]<<16)|(h24[1]<<8)|h24[2];
    uint32_t h_mod = hval % n;
    uint32_t s     = modexp(h_mod, d, n);
    signature[0] = (s>>16)&0xFF;
    signature[1] = (s>>8 )&0xFF;
    signature[2] =  s      &0xFF;

    TEE_MemMove(params[1].memref.buffer, signature, 3);
    params[1].memref.size = 3;

    TEE_CloseObject(obj);
    return TEE_SUCCESS;
}

TEE_Result micro_verify(TEE_Param params[4]) {
    unsigned char *message = params[0].memref.buffer;

    unsigned char *signature = params[1].memref.buffer;

    unsigned char *public_key = params[2].memref.buffer;

    unsigned char h24[3];
    mini_hash24(message, 5, h24);
    uint32_t n     = (public_key[0]<<16)|(public_key[1]<<8)|public_key[2];
    uint32_t hval  = (h24[0]<<16)|(h24[1]<<8)|h24[2];
    uint32_t h_mod = hval % n;
    uint32_t s     = (signature[0]<<16)|(signature[1]<<8)|signature[2];
    uint32_t rec   = modexp(s, 17, n);
    if (rec == h_mod) {
        params[3].value.a = 1; // Signature is valid
    }
    else {
        params[3].value.a = 0; // Signature is invalid
    }
    return TEE_SUCCESS;
}
#include "crypto.h"

void print_bytes(const unsigned char *bytes, size_t len) {
    for (size_t i = 0; i < len; i++) {
        printf("0x%02X", bytes[i]);
        if (i < len - 1)
            printf(", ");
    }
    printf("\n");
}

void string_to_bytes(const char in[7], char out[2]) {
    if (strlen(in) != 6 || in[0] != '0' || in[1] != 'x') {
        return -1;
    }

    unsigned int value;
    if (sscanf(in + 2, "%4x", &value) != 1) {
        return -1;
    }

    out[0] = (value >> 8) & 0xFF;
    out[1] = value & 0xFF;
    return 0;
}

void bytes_to_string(const char in[2], char out[7]) {
    sprintf(out, "0x%02X%02X", in[0], in[1]);
}


int set_whitelist(TEEC_Session *sess) {
    save_object(sess, "whitelist");
    return 0;
}

int check_whitelist(TEEC_Session *sess, const char *can_id) {
    TEEC_Result res;
    TEEC_Operation op;
    uint32_t origin;

    const char *key = "whitelist";
    size_t key_len = strlen(key);
    char *data = malloc(0);
    size_t data_len = 0;

    memset(&op, 0, sizeof(op));
    op.paramTypes = TEEC_PARAM_TYPES(TEEC_MEMREF_TEMP_INPUT, TEEC_MEMREF_TEMP_OUTPUT, TEEC_NONE, TEEC_NONE);
    op.params[0].tmpref.buffer = key;
    op.params[0].tmpref.size   = key_len;
    op.params[1].tmpref.buffer = data;
    op.params[1].tmpref.size   = data_len;

    res = TEEC_InvokeCommand(sess, CMD_LOAD, &op, &origin);
    data_len = op.params[1].tmpref.size;
    if (res != TEEC_SUCCESS) {
        printf("Error loading object: %x\n", res);
        return -1;
    }
    else if (data_len == 0) {
        printf("Object(%s) not found!\n", key);
    }
    else {
        if ((int)strtol(data, NULL, 0) == can_id) {
            printf("can_id is valid\n");
            return 1;
        }
        else {
            printf("can_id is invalid\n");
            return 0;
        }
    }
}

int set_priv_key(TEEC_Session *sess) {
    save_hex_object(sess, "private_key");
    return 0;
}

int generate_public_key(TEEC_Session *sess, unsigned char *public_key) {
    TEEC_Result res;
    TEEC_Operation op;
    uint32_t origin;

    memset(&op, 0, sizeof(op));
    op.paramTypes = TEEC_PARAM_TYPES(TEEC_MEMREF_TEMP_OUTPUT, TEEC_NONE, TEEC_NONE, TEEC_NONE);
    op.params[0].tmpref.buffer = public_key;
    op.params[0].tmpref.size = 3;
    res = TEEC_InvokeCommand(sess, CMD_GENERATE_PUBLIC_KEY, &op, &origin);
    if (res != TEEC_SUCCESS) {
        printf("Error generating public key: %x\n", res);
        return -1;
    }
    printf("Public key generated successfully!\n");
    printf("Public key: ");
    for (int i = 0; i < 3; i++) {
        printf("%02X ", public_key[i]);
    }
    printf("\n");
    return 0;
}

int micro_sign(TEEC_Session *sess, const unsigned char *message, unsigned char *signature) {
    TEEC_Result res;
    TEEC_Operation op;
    uint32_t origin;

    memset(&op, 0, sizeof(op));
    op.paramTypes = TEEC_PARAM_TYPES(TEEC_MEMREF_TEMP_INPUT, TEEC_MEMREF_TEMP_OUTPUT, TEEC_NONE, TEEC_NONE);
    op.params[0].tmpref.buffer = message;
    op.params[0].tmpref.size = 5;
    op.params[1].tmpref.buffer = signature;
    op.params[1].tmpref.size = 3;
    res = TEEC_InvokeCommand(sess, CMD_SIGN, &op, &origin);
    if (res != TEEC_SUCCESS) {
        printf("Error sign: %x\n", res);
        return -1;
    }
    printf("Signature generated successfully!\n");
    return 0;
}

int micro_verify(TEEC_Session *sess, const unsigned char *message,
                 const unsigned char *signature,
                 const unsigned char *public_key) {
    TEEC_Result res;
    TEEC_Operation op;
    uint32_t origin;
    
    memset(&op, 0, sizeof(op));
    op.paramTypes = TEEC_PARAM_TYPES(TEEC_MEMREF_TEMP_INPUT, TEEC_MEMREF_TEMP_INPUT, TEEC_MEMREF_TEMP_INPUT, TEEC_VALUE_OUTPUT);
    op.params[0].tmpref.buffer = message;
    op.params[0].tmpref.size = 5;
    op.params[1].tmpref.buffer = signature;
    op.params[1].tmpref.size = 3;
    op.params[2].tmpref.buffer = public_key;
    op.params[2].tmpref.size = 3;
    op.params[3].value.a = 0;
    res = TEEC_InvokeCommand(sess, CMD_VERIFY, &op, &origin);

    if (res != TEEC_SUCCESS) {
        printf("Error verify: %x, %d n", res, origin);
        return -1;
    }
    if (op.params[3].value.a == 1) {
        printf("Signature is valid\n");
        return 1;
    } else {
        printf("Signature is invalid\n");
        return 0;
    }
}
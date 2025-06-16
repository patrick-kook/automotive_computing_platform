#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tee_client_api.h>
#include "ta.h"
#include "user_ta_header_defines.h"

#include "secure_storage.h"
#include "crypto.h"

int main(int argc, char *argv[]) {
    TEEC_Context ctx;
    TEEC_Session sess;
    TEEC_Operation op;
    TEEC_UUID uuid = {0x4014bf39, 0x668c, 0x4253, {0x90, 0xb9, 0x70, 0x4b, 0x82, 0x57, 0xd1, 0x29}};
    uint32_t origin;

    TEEC_InitializeContext(NULL, &ctx);
    TEEC_OpenSession(&ctx, &sess, &uuid, TEEC_LOGIN_PUBLIC, NULL, NULL, &origin);
    
    /////////////////////////
    // secure_storage TEST //
    /////////////////////////
    save_object(&sess, "object_test");

    load_object(&sess, "object_test");

    delete_object(&sess, "object_test");

    
    set_whitelist(&sess);
    int check = check_whitelist(&sess, 0x123);
    if (check) {
        printf("can_id is valid");
    }
    eles {
        printf("can_id is invalid");
    }
    set_priv_key(&sess);
    printf("\n");

    unsigned char public_key[3];
    generate_public_key(&sess, public_key);
    printf("\n");
    unsigned char message[5] = {0x11, 0x22, 0x33, 0x44, 0x55};
    unsigned char signature[3];

    micro_sign(&sess, message, signature);
    printf("Message     : ");
    for (int i = 0; i < 5; i++) printf("%02X ", message[i]);
    printf("\nSignature   : %02X %02X %02X\n\n", signature[0], signature[1], signature[2]);

    micro_verify(&sess, message, signature, public_key);

    TEEC_CloseSession(&sess);
    TEEC_FinalizeContext(&ctx);
    return 0;
}
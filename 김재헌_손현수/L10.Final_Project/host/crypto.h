#ifndef CRYPTO_H
#define CRYPTO_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tee_client_api.h>
#include "ta.h"
#include "user_ta_header_defines.h"
#include "secure_storage.h"

#define DIGITAL_SIGNATURE_KEY_SIZE 2

void string_to_bytes(const char in[7], char out[2]);
void bytes_to_string(const char in[2], char out[7]);
void print_bytes(const unsigned char *bytes, size_t len);
int set_whitelist(TEEC_Session *sess);
int check_whitelist(TEEC_Session *sess, const char *can_id);
int set_priv_key(TEEC_Session *sess);
int generate_public_key(TEEC_Session *sess, unsigned char *public_key);
int micro_sign(TEEC_Session *sess, const unsigned char *message, unsigned char *signature);
int micro_verify(TEEC_Session *sess, const unsigned char *message, const unsigned char *signature, const unsigned char *public_key);
#endif // CRYPTO_H
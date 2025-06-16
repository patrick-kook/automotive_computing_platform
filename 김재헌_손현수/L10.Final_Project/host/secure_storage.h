#ifndef SECURE_STORAGE_H
#define SECURE_STORAGE_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tee_client_api.h>
#include "ta.h"
#include "user_ta_header_defines.h"

int save_object(TEEC_Session *sess, const char *key);
int load_object(TEEC_Session *sess, const char *key);
int delete_object(TEEC_Session *sess, const char *key);
int save_hex_object(TEEC_Session *sess, const unsigned char *key);

#endif // SECURE_STORAGE_H
#include "secure_storage.h"
#include "crypto.h"
#include "ta.h"

int save_object(TEEC_Session *sess, const char *key) {
    TEEC_Result res;
    TEEC_Operation op;
    uint32_t origin;

    size_t key_len = strlen(key);
    char *data = NULL;
    size_t data_len = 0;
    size_t buffer_len = 0;

    printf("Enter the object(%s) value: \n", key);
    data_len = getline(&data, &buffer_len, stdin);
    if (data_len > 0 && data[data_len-1] == '\n') {
        data[data_len-1] = '\0';
        --data_len;
    }

    memset(&op, 0, sizeof(op));
    op.paramTypes = TEEC_PARAM_TYPES(TEEC_MEMREF_TEMP_INPUT, TEEC_MEMREF_TEMP_INPUT, TEEC_NONE, TEEC_NONE);
    op.params[0].tmpref.buffer = key;
    op.params[0].tmpref.size = key_len;
    op.params[1].tmpref.buffer = data;
    op.params[1].tmpref.size = data_len;

    res = TEEC_InvokeCommand(sess, CMD_SAVE, &op, &origin);
    if (res != TEEC_SUCCESS) {
        printf("Error saving object: %x\n", res);
        return -1;
    }
    else {
        printf("Object(%s) saved successfully!\n", key);
        printf("Object name           : %s\n", key);
        printf("Object name length    : %zu\n", key_len);
        printf("Object value          : %s\n", data);
        printf("Object value length   : %zu\n", data_len);
    }
    return 0;
}

int load_object(TEEC_Session *sess, const char *key) {
    TEEC_Result res;
    TEEC_Operation op;
    uint32_t origin;

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
        printf("Object(%s) loaded successfully!\n", key);
        printf("Object name           : %s\n", key);
        printf("Object name length    : %zu\n", key_len);
        printf("Object value          : %s\n", data);
        printf("Object value length   : %zu\n", data_len);
    }
    return 0;
}

int delete_object(TEEC_Session *sess, const char *key) {
    TEEC_Result res;
    TEEC_Operation op;
    uint32_t origin;

    size_t key_len = strlen(key);
    memset(&op, 0, sizeof(op));
    op.paramTypes = TEEC_PARAM_TYPES(TEEC_MEMREF_TEMP_INPUT, TEEC_NONE, TEEC_NONE, TEEC_NONE);
    op.params[0].tmpref.buffer = (void *)key;
    op.params[0].tmpref.size   = key_len;

    res = TEEC_InvokeCommand(sess, CMD_DELETE, &op, &origin);
    if (res != TEEC_SUCCESS) {
        printf("Error deleting object: %x\n", res);
        return -1;
    }
    else {
        printf("Object(%s) deleted successfully!\n", key);
        printf("Object name           : %s\n", key);
        printf("Object name length    : %zu\n", key_len);
    }
    return 0;
}

int save_hex_object(TEEC_Session *sess, const unsigned char *key) {
    TEEC_Result res;
    TEEC_Operation op;
    uint32_t origin;

    size_t key_len = strlen(key);
    char *data = NULL;
    size_t data_len = 0;
    size_t buffer_len = 0;

    printf("Enter the object(%s) value: \n", key);
    data_len = getline(&data, &buffer_len, stdin);
    if (data_len > 0 && data[data_len-1] == '\n') {
        data[data_len-1] = '\0';
        --data_len;
    }
    
    printf("convert data to hex\n");
    unsigned char data_byte[2];
    string_to_bytes(data, data_byte);

    memset(&op, 0, sizeof(op));
    op.paramTypes = TEEC_PARAM_TYPES(TEEC_MEMREF_TEMP_INPUT, TEEC_MEMREF_TEMP_INPUT, TEEC_NONE, TEEC_NONE);
    op.params[0].tmpref.buffer = key;
    op.params[0].tmpref.size = key_len;
    op.params[1].tmpref.buffer = data_byte;
    op.params[1].tmpref.size = strlen(data_byte);

    res = TEEC_InvokeCommand(sess, CMD_SAVE, &op, &origin);
    if (res != TEEC_SUCCESS) {
        printf("Error saving object: %x\n", res);
        return -1;
    }
    else {
        printf("Object(%s) saved successfully!\n", key);
        printf("Object name           : %s\n", key);
        printf("Object name length    : %zu\n", key_len);
        printf("Object value (bytes)  : ");
        print_bytes(data_byte, 2);
        printf("Object value length   : %zu\n", 2);
    }
    return 0;
}
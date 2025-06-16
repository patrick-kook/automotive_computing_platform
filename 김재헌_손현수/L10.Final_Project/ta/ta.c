#include <tee_internal_api.h>
#include <tee_internal_api_extensions.h>
#include "ta.h"
#include <string.h>

TEE_Result save_object(TEE_Param params[4]);
TEE_Result load_object(TEE_Param params[4]);
TEE_Result delete_object(TEE_Param params[4]);
TEE_Result generate_public_key(TEE_Param params[4]);
TEE_Result micro_sign(TEE_Param params[4]);
TEE_Result micro_verify(TEE_Param params[4]);

TEE_Result TA_CreateEntryPoint(void) { return TEE_SUCCESS; }
void TA_DestroyEntryPoint(void) { }
TEE_Result TA_OpenSessionEntryPoint(uint32_t param_types,
                                    TEE_Param params[4],
                                    void **sess_ctx) {
    (void)param_types; (void)params; (void)sess_ctx;
    return TEE_SUCCESS;
}
void TA_CloseSessionEntryPoint(void *sess_ctx) { (void)sess_ctx; }

TEE_Result TA_InvokeCommandEntryPoint(void *sess_ctx,
                                      uint32_t cmd_id,
                                      uint32_t param_types,
                                      TEE_Param params[4])
{
    (void)sess_ctx;
    (void)param_types;

    switch (cmd_id) {
    case CMD_SAVE:
        return save_object(params);

    case CMD_LOAD:
        return load_object(params);

    case CMD_DELETE:
        return delete_object(params);

    case CMD_GENERATE_PUBLIC_KEY:
        return generate_public_key(params);
    
    case CMD_SIGN:
        return micro_sign(params);

    case CMD_VERIFY:
        return micro_verify(params);

    default:
        return TEE_ERROR_BAD_PARAMETERS;
    }
}

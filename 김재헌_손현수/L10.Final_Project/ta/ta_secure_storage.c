#include <tee_internal_api.h>
#include <tee_internal_api_extensions.h>
#include "ta.h"
#include <string.h>

TEE_Result save_object(TEE_Param params[4])
{
    TEE_ObjectHandle obj = TEE_HANDLE_NULL;

    size_t key_len = params[0].memref.size;
    char *key = TEE_Malloc(key_len, 0);
    TEE_MemMove(key, params[0].memref.buffer, key_len);

    size_t data_len = params[1].memref.size;
    char *data = TEE_Malloc(data_len, 0);
    TEE_MemMove(data, params[1].memref.buffer, data_len);

    TEE_CreatePersistentObject(TEE_STORAGE_PRIVATE,
                                     key, key_len,
                                     TEE_DATA_FLAG_ACCESS_WRITE |
                                     TEE_DATA_FLAG_OVERWRITE,
                                     TEE_HANDLE_NULL,
                                     data, data_len,
                                     &obj);
    TEE_CloseObject(obj);
    TEE_Free(key);
    TEE_Free(data);
    return TEE_SUCCESS;
}

TEE_Result load_object(TEE_Param params[4])
{
    TEE_ObjectHandle obj;
    TEE_ObjectInfo object_info;
    
    char *key;
    size_t key_len;
    char *data;
    size_t data_len;

    key_len = params[0].memref.size;
    key = TEE_Malloc(key_len, 0);
    TEE_MemMove(key, params[0].memref.buffer, key_len);

    

    TEE_OpenPersistentObject(TEE_STORAGE_PRIVATE,
                                   key, key_len,
                                   TEE_DATA_FLAG_ACCESS_READ,
                                   &obj);
    TEE_GetObjectInfo1(obj, &object_info);

    data = TEE_Malloc(object_info.dataSize, 0);

    TEE_ReadObjectData(obj, data, object_info.dataSize, &data_len);
    TEE_MemMove(params[1].memref.buffer, data, object_info.dataSize);
    params[1].memref.size = object_info.dataSize;

    TEE_CloseObject(obj);
    TEE_Free(key);
    TEE_Free(data);
    return TEE_SUCCESS;
}

TEE_Result delete_object(TEE_Param params[4])
{
	TEE_ObjectHandle object;

	char *key;
	size_t key_len;

	key_len = params[0].memref.size;
	key = TEE_Malloc(key_len, 0);

	TEE_MemMove(key, params[0].memref.buffer, key_len);

	TEE_OpenPersistentObject(TEE_STORAGE_PRIVATE,
					key, key_len,
					TEE_DATA_FLAG_ACCESS_WRITE_META,
					&object);

	TEE_CloseAndDeletePersistentObject1(object);
	TEE_Free(key);

	return TEE_SUCCESS;
}
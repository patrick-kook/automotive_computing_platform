uint32_t feistel(uint32_t half, uint64_t key);
uint64_t simple_des(uint64_t input, uint64_t key, int encrypt);
uint64_t bytes_to_uint64(unsigned char *block);
void uint64_to_bytes(uint64_t value, unsigned char *block);
void encrypt(unsigned char *plaintext, unsigned char *encrypted);
void decrypt(unsigned char *encrypted, unsigned char *decrypted);
uint32_t feistel(uint32_t half, uint64_t key) {
    half ^= (uint32_t)(key & 0xFFFFFFFF);
    return (half << 3) | (half >> (32 - 3));
}

uint64_t simple_des(uint64_t input, uint64_t key40, int encrypt) {
    uint32_t left  = (input >> 20) & 0xFFFFF;
    uint32_t right = input & 0xFFFFF;

    if (encrypt) {
        for (int i = 0; i < 2; i++) {
            uint32_t temp = right;
            right = left ^ (feistel(right, key40) & 0xFFFFF);
            left = temp;
        }
    } else {
        for (int i = 0; i < 2; i++) {
            uint32_t temp = left;
            left = right ^ (feistel(left, key40) & 0xFFFFF);
            right = temp;
        }
    }

    return (((uint64_t)left << 20) | right) & 0xFFFFFFFFFFULL;
}

uint64_t bytes_to_uint64(unsigned char *block) {
    uint64_t result = 0;
    for (int i = 0; i < BLOCK_SIZE; i++) {
        result = (result << 8) | block[i];
    }
    return result;
}

void uint64_to_bytes(uint64_t value, unsigned char *block) {
    for (int i = BLOCK_SIZE-1; i >= 0; i--) {
        block[i] = value & 0xFF;
        value >>= 8;
    }
}
void encrypt(unsigned char *plaintext, unsigned char *encrypted) {
    uint64_t plain64 = bytes_to_uint64(plaintext);
    uint64_t cipher64 = simple_des(plain64, key, 1);
    uint64_to_bytes(cipher64, encrypted);
}

void decrypt(unsigned char *encrypted, unsigned char *decrypted) {
    uint64_t cipher64 = bytes_to_uint64(encrypted);
    uint64_t plain64 = simple_des(cipher64, key, 0);
    uint64_to_bytes(plain64, decrypted);
}
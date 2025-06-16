# No Need to modify this file.

CFLAGS += -Wall -I../ta -I$(OPTEE_CLIENT_EXPORT)/include -fstack-protector-strong
LDADD += -lteec -L$(OPTEE_CLIENT_EXPORT)/lib

# 소스 파일 명시
MAIN_SRC := main.c
OTHER_SRCS := secure_storage.c crypto.c can.c # 여기에 필요한 .c 파일을 직접 명시

# 오브젝트 파일로 변환
MAIN_OBJ := $(O)/main.o
OTHER_OBJS := $(patsubst %.c,$(O)/%.o, $(OTHER_SRCS))
BINARY := $(O)/main

.PHONY: all clean install

all: $(BINARY)

$(O)/%.o: %.c
	mkdir -p $(dir $@)
	gcc $(CFLAGS) -c $< -o $@

$(BINARY): $(MAIN_OBJ) $(OTHER_OBJS)
	mkdir -p $(dir $@)
	gcc -o $@ $^ $(LDADD)

install: $(BINARY)
	@echo "[installing binary...]"
	sudo cp $^ $(CA_EXE_DIR)

clean:
	rm -f $(O)/*.o $(BINARY)

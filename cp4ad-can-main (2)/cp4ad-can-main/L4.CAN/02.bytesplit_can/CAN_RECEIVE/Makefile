GENERATOR='/cygdrive/c/eclipse/evidence/generate_code.bat'
EE_DIR='C:\eclipse'
ARDUINO_DIR="/cygdrive/C/Arduino/hardware/tools/avr/bin"
BUILD_DIR='out'
ELF_FILE=erika3app.elf
ERIKA_DIR='erika'
OUT_DIR='out'

all: build

build:

	cd $(BUILD_DIR); sed -i 's/cygpath -ms "C:\Arduino"/cygpath -ms "C:\\Arduino"/g' makefile; \
	make BINDIR=$(ARDUINO_DIR) CPPFLAGS="-I../lib/ACAN2517FD" CXXFLAGS="-I../lib/ACAN2517FD"

touch:
	touch $(BUILD_DIR)\erika3app.elf

config:
	rm -rf $(ERIKA_DIR) 
	rm -rf $(OUT_DIR) 
	$(GENERATOR) $(EE_DIR) conf.oil .; echo "[Config DONE]"

clean:
	cd $(BUILD_DIR); make BINDIR=$(ARDUINO_DIR) clean

ARDUINO_BAUDRATE    = 115200
ARDUINO_MCU         = atmega328p

ifeq    ($(shell uname), Linux)
export  ARDUINO_SDK_FILES   = $(strip )
export  ARDUINO_PHY_PORT    = /dev/$(ARDUINO_PORT)
else    # Linux
export ARDUINO_SDK_FILES   = $(shell cygpath -ms "c:\Arduino")
export ARDUINO_PHY_PORT    = COM4
endif   # Linux

PHONY: upload
upload:
	@$(ARDUINO_SDK_FILES)/hardware/tools/avr/bin/avrdude -V \
	-C$(ARDUINO_SDK_FILES)/hardware/tools/avr/etc/avrdude.conf \
	-p$(ARDUINO_MCU) -carduino -P$(ARDUINO_PHY_PORT) \
	-b$(ARDUINO_BAUDRATE) -D -Uflash:w:"$(shell cygpath -wa "$(shell pwd)")\out\arduino.hex":i

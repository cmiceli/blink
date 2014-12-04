PRG=blink
OBJ=$(PRG).o
HEX=$(PRG).hex
CFILES=$(PRG).c
AVR_LOC=/home/chris/micro/avr/avr/include/
HEADERS=

MCU_TARGET=atxmega256a3bu
CC=avr-gcc
OPTIMISE=-O2
LIBS=
CCFLAGS=-Wall -mmcu=$(MCU_TARGET) -g $(OPTIMISE)
LDFLAGS=
OBJCOPY=avr-objcopy

all: $(HEX)

$(OBJ): $(CFILES) $(HEADERS)
		$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

%.hex: %.o
		$(OBJCOPY) -j .text -j .data -O ihex $< $@

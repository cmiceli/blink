PRG=blink
OBJ=$(PRG).o
CFILES=$(PRG).c
HEADERS=

MCU_TARGET=atmega256a3bu
CC=avr-gcc
OPTIMISE=-O2
LIBS=
CCFLAGS=-Wall -mmcu=$(MCU_TARGET) -g $(OPTIMISE)
LDFLAGS=-Wl
OBJCOPY=avr-objcopy

all: $(PRG).elf

hex:  $(PRG).hex

$(OBJ): $(CFILES) $(HEADERS)

$(PRG).elf: $(OBJ)
		$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

%.hex: %.elf
		$(OBJCOPY) -j .text -j .data -O ihex $< $@

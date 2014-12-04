Blink -> Hello world for avr

This is my first little go at microcontroller programming.

I have an ATXMEGA256A3BU which was something like 40 bucks on Element14.

Hopefully this all is easy enough to understand (I used the built in clock, but there is an external source)

To build:

1. make sure to ammend the MCU_TARGET
2. you should take note that AVR_LOC won't exist for you (not used yet)
3. run make

To run on your micro:

1. get dfu-programmer
2. live in blissful happiness because you didn't need to get Windows to flash your micro!

#include <avr/io.h>
#include <util/delay.h>

#define BLINK_DELAY 1000
#define PIN 0
#define PIN_DIRECTION_INPUT 0
#define PIN_DIRECTION_OUTPUT 1

int main(void){
    //set the port direction
    PORTR.DIR = (PIN_DIRECTION_OUTPUT<<PIN);

    while(1){
        _delay_ms(BLINK_DELAY);
        PORTR.OUT ^= (1<<PIN);
    }

}

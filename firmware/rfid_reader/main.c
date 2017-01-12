#include "main.h"
#include "RFID.h"
#include "spi.h"
#include "uart.h"
#include <string.h>


void setup() {
	// Configure port directions.
	// Set the chipSelectPin as digital output, do not select the slave yet
	// Set the resetPowerDownPin as digital output, do not reset or power down.
	DIR_REG = (1<<USI_DATAOUT_PIN) | (1<<USI_CLOCK_PIN) | (1 << MFRC_CS) | (1 << MFRC_RESET);

	OUT_REG = (1<<USI_DATAIN_PIN)  // Pull-ups.
				| (1 << MFRC_CS);	// Slave release for now

	// Configure USI to 3-wire master mode with overflow interrupt.

	USICR = (1<<USIOIE) | (1<<USIWM0) | (1<<USICS1) | (USICS0) | (1<<USICLK);

	/* Uart init */
	DDRD |= (1 << PD1);
	UBRRL = (unsigned char)BAUD_PRESCALE;
	UBRRH = (BAUD_PRESCALE >> 8);
	UCSRB = (1<<TXEN) | (1 << RXCIE);

	RFID_Init();

	_delay_ms(100);
}


/* Reads an RFID tag if present
 * returns 0 if none is present, 32-bit ID if one is read
 */
uint32_t readTagId( void )
{
	uint8_t calcChecksum;
	uint8_t status;
	uint8_t str[RFID_MSG_MAX_LEN];


	str[0] = 0;
	str[1] = 0x44;
	//Find tags, return tag type
	status = RFID_Request(str);
	//Anti-collision, return tag serial number 4 bytes
	status = RFID_Anticoll(str);

	calcChecksum = str[0] ^ str[1] ^ str[2] ^ str[3];

	uint32_t* cardId = (uint32_t*)str;

	if ((status != MI_OK) || (calcChecksum != str[4]))
	{
		*cardId = 0;
	}

	return *cardId;
}



int main( void )
{
	uint32_t tagId;

	setup();

	while(1){

		tagId = readTagId();

		if(tagId != 0){
			uart_print((uint8_t*)&tagId, 4);

		}


		_delay_ms(300);
	}
}


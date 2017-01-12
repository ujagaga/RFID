/*
 * uart.c
 *
 *  Created on: Dec 30, 2016
 *      Author: rada
 */

#include "main.h"
#include "uart.h"

void uart_print(uint8_t* data, uint8_t len)
{
	uint8_t i = 0;

	if(len > 32){
		len = 32;
	}

	while(i < len){
		uart_printByte(data[i]);
		i++;
	}
}


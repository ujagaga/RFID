/*
 * uart.h
 *
 *  Created on: Dec 30, 2016
 *      Author: rada
 */

#ifndef UART_H_
#define UART_H_

#define USART_BAUDRATE 	(9600)
#define BAUD_PRESCALE 	(((( F_CPU / 16) + ( USART_BAUDRATE / 2) ) / ( USART_BAUDRATE ) ) - 1)
#define waitTxReady()	while (( UCSRA & (1 << UDRE ) ) == 0)

#define uart_printByte(data)	do{	waitTxReady();	UDR = data;}while(0)

void uart_print(uint8_t* data, uint8_t len);

#endif /* UART_H_ */

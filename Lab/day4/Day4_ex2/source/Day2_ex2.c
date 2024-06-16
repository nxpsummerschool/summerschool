/*
 * Copyright 2016-2024 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/**
 * @file    Day2_ex2.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "LPC55S69_cm33_core0.h"
#include "fsl_debug_console.h"
/* TODO: insert other include files here. */
#include "fsl_usart.h"
/* TODO: insert other definitions and declarations here. */
void mod_with_offset_inplace(uint8_t* c, int8_t shift, uint8_t offset, uint8_t modulo)
{
	int8_t cd =*c - offset + shift;
	*c =  cd<0?cd%modulo+modulo:cd%modulo;
	*c = *c + offset;
}
void caesar_shift_inplace(uint8_t* c, int8_t shift, uint16_t len)
{
	for (int i=0; i<len; i++)
	{
		//uppercase
		if ((c[i]<=90) && (c[i]>=65))
			mod_with_offset_inplace(&c[i], shift, 65, 90-65+1);
		//lowercase
		if ((c[i]<=122) && (c[i]>=97))
			mod_with_offset_inplace(&c[i], shift, 97, 122-97+1);
	}
}
/*
 * @brief   Application entry point.
 */
int main(void) {

    /* Init board hardware. */
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitBootPeripherals();
#ifndef BOARD_INIT_DEBUG_CONSOLE_PERIPHERAL
    /* Init FSL debug console. */
    BOARD_InitDebugConsole();
#endif

    /* Enter an infinite loop, just incrementing a counter. */
       uint8_t ch;
       uint8_t len;
       uint8_t buf[256];
	   while (1)
	   {
		   USART_ReadBlocking(USART0, &ch, 1);
		   USART_ReadBlocking(USART0, &len, 1);
		   USART_ReadBlocking(USART0, buf, len);

		   switch (ch)
		   {
		   //Caesar encrypt
		   case 'c':
			   caesar_shift_inplace(&buf[1],buf[0], len);
			   break;
		   //Caesar decrypt
		   case 'C':
			   caesar_shift_inplace(&buf[1],buf[0]*(-1), len);
			   break;

		   }

		   USART_WriteBlocking(USART0, buf, len);
	   }
    return 0 ;
}

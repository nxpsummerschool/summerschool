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
void toUpped_inplace(char* c)
{
	   if (((*c)>=97)&&((*c)<=122))
		   (*c)=(*c)-32;
}

void toLower_inplace(char* c)
{
	   if (((*c)>=65)&&((*c)<=90))
		   (*c)=(*c)+32;
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
       uint16_t len;
       uint8_t buf[256];
	   while (1)
	   {
		   USART_ReadBlocking(USART0, &ch, 1);
		   USART_ReadBlocking(USART0, &len, 2);
		   USART_ReadBlocking(USART0, buf, len);

		   switch (ch)
		  		   {
		  		   case 'l':
		  			   for (int i=0;i<len;i++)
		  			   {
		  				   toLower_inplace(&buf[i]);
		  			   }
		  			   break;
		  		   case 'u':
		  			   for (int i=0;i<len;i++)
		  			   {
		  				   toUpped_inplace(&buf[i]);
		  			   }
		  			   break;
		  		   case 'z':
		  			   for (int i=0;i<len;i++)
		  			   {
		  				   if (0==i%2)
		  				   {
		  					   toUpped_inplace(&buf[i]);
		  				   }
		  			   }
		  			   break;
		  		   case 'x':
		  			   for (int i=0;i<len;i++)
		  			   {
		  				   if (1==i%2)
		  				   {
		  					   toLower_inplace(&buf[i]);
		  				   }
		  			   }
		  			   break;
		  		   }

		   USART_WriteBlocking(USART0, buf, len);
	   }
    return 0 ;
}

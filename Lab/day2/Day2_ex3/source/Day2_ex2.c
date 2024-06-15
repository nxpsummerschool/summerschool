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
		   case 'l':
			   for (int i=0;i<len;i++)
			   {
				   if ((buf[i]>=65)&&(buf[i]<=90))
					   buf[i]=buf[i]+32;
			   }
			   break;
		   case 'u':
			   for (int i=0;i<len;i++)
			   {
				   if ((buf[i]>=97)&&(buf[i]<=122))
					   buf[i]=buf[i]-32;
			   }
			   break;
		   }

		   USART_WriteBlocking(USART0, buf, len);
	   }
    return 0 ;
}

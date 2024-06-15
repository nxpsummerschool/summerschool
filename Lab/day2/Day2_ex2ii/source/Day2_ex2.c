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

    uint8_t ch;

    /* Enter an infinite loop, just incrementing a counter. */
	   uint8_t function = 0;//0 is lowercase
	   while (1)
	   {
		   USART_ReadBlocking(USART0, &ch, 1);
		   if ('l'==ch)
		   {
			   function=0;
		   }
		   if ('u'==ch)
		   {
			   function=1;
		   }

		   if (0==function)
		   {
			   if ((ch>=65)&&(ch<=90))
			   ch=ch+32;
		   }
		   if (1==function)
		   {
			   if ((ch>=97)&&(ch<=122))
			   ch=ch-32;
		   }


		   USART_WriteBlocking(USART0, &ch, 1);
	   }
    return 0 ;
}

/*
 * Copyright 2016-2024 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/**
 * @file    Day3_testing.c
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
#include <string.h>
#include <test_utils.h>
#include <tests/test_functions.h>
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

    /* Get the default source clock frequency */
    CLOCK_EnableClock(kCLOCK_Iocon);
   /* ch used to select between tests */
   uint8_t ch;
   /* len of the buffer to be read from the host side */
   uint8_t len;
   /* allocated buffer to be read from the host side */
   uint8_t buf[2048];
   /* error string to be used for printing an error message */
   uint8_t error_string[256] = {"\0"};

   testStatus_t status = STATUS_PASS;

   while (1)
   {
	   USART_ReadBlocking(USART0, &ch, 1);
	   USART_ReadBlocking(USART0, &len, 1);
	   USART_ReadBlocking(USART0, buf, len);

	   switch (ch)
	   {
		   case 1:
			   status = test_memcopy((memcpy_func*)memcopy_1, error_string, buf);
			   break;
		   case 2:
			   status = test_memcopy((memcpy_func*)memcopy_2, error_string, buf);
			   break;
		   case 3:
			   status = test_memcopy((memcpy_func*)memcopy_3, error_string, buf);
			   break;
		   case 4:
			   status = test_check_prime(error_string);
			   break;
		   default:
			   sprintf((char *) error_string, "No tests were selected!! \n");
			   break;
	   }

	   if(STATUS_PASS == status)
		   sprintf((char *) error_string, "Test %u is passing!\n", ch);
	   USART_WriteBlocking(USART0, error_string, strlen((char *)error_string));
   }
   return 0 ;
}


/*
 * Copyright (c) 2013 - 2015, Freescale Semiconductor, Inc.
 * Copyright 2016-2017 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "fsl_device_registers.h"

#include "pin_mux.h"
#include "clock_config.h"
#include "peripherals.h"

#include "board.h"
#include "app.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Code
 ******************************************************************************/

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
#include <src/functions_under_test.h>

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

    /* ch used to select between tests */
    uint8_t ch;
    /* len of the buffer to be read from the host side */
    uint8_t len;
    /* allocated buffer to be read from the host side */
    uint8_t buf[256];
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
			   // Call test_check_prime routine
			   break;
		   case 2:
			   // Call test_check_memcopy routine to test the memcopy_1 function
			   break;
		   case 3:
			   // Call test_check_memcopy routine to test the memcopy_2 function
			   break;
		   case 4:
			   // Call test_check_memcopy routine to test the memcopy_3 function
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


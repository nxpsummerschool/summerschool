
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
#include "fsl_usart.h"

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
/*!
 * @brief Main function
 */

int main(void)
{

    /* Init board hardware.     
    BOARD_InitHardware();
    BOARD_InitDebugConsole();
    */
    /* Add user custom codes below */
    while (1)
    {
        uint8_t test=0;
        test=test+24;
        test=test+33;
        USART_WriteBlocking(USART0, &test, 1);
    }
}


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
#include "fsl_usart.h"

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

    /* Init board hardware. */
    BOARD_InitHardware();
    BOARD_InitDebugConsole();
    /* Add user custom codes below */
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
}

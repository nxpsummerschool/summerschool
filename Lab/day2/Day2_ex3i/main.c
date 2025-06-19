
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
    /* Enter an infinite loop, just incrementing a counter. */
    uint8_t ch;
    uint16_t len;
    uint8_t buf[256];
    while (1)
    {
        USART_ReadBlocking(USART0, &ch, 1);
        USART_ReadBlocking(USART0, (uint8_t*)(&len), 2);
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
}

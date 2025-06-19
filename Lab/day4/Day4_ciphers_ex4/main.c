
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

uint8_t xor_cipher_inplace(uint8_t* key, uint8_t* message, uint8_t len)
{
	uint8_t len_padding =   (((len-1)/8)+1)*8;
	uint8_t no_blocks   =   len_padding/8;

	for (uint8_t i=0; i<no_blocks;  i++)
	{
		for (uint8_t j=0; j<8;j++)
        {
            if (i==0)
            {
                message[i*8+j] = message[i*8+j]^key[j];
            }
            else
            {
                message[i*8+j] = message[i*8+j]^key[j]^message[(i-1)*8+j];
            }
        }
    }

    return len_padding;
}

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

    /* Init USART */
    BOARD_InitDebugConsole();

    /* Enter an infinite loop, just incrementing a counter. */
    uint8_t ch;
    uint8_t len;
    uint8_t buf[256];
    uint8_t key[]={0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08};

    while(1)
    {
        /* Read Length */
        USART_ReadBlocking(USART0, &len,    1U);

        /* Convert 0-9 char digits to int */
        len = atoi(&len);

        /* Read Value */
        USART_ReadBlocking(USART0, buf,     len);

        /* Pad the buffer */
        for (uint8_t i=len;i<(((len-1)/8)+1)*8;i++)
        {
            buf[i]=0;
        }

        len = xor_cipher_inplace(key, buf, len);

        USART_WriteBlocking(USART0, buf, len);
    }
}


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

/* Function used to offset a char in a string by shift places */
void mod_with_offset_inplace(uint8_t* c, int8_t shift, uint8_t offset, uint8_t modulo)
{
	int8_t cd =*c - offset + shift;
	*c =  cd<0	?	cd%modulo+modulo	:	cd%modulo;
	*c = *c + offset;
}

/* Function used for caesar cipher */
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

    uint8_t ch;
    uint8_t len;
    uint8_t buf[256];

    while (1)
    {
        /* Read Type */
        USART_ReadBlocking(USART0, &ch,     1U);

        /* Read Length */
        USART_ReadBlocking(USART0, &len,    1U);

        /* Convert 0-9 char digits to int */
        len = atoi(&len);

        /* Read Value */
        USART_ReadBlocking(USART0, buf,     len);

        /* Convert 0-9 char digit to int */
        buf[0] = atoi(&buf[0]);

        switch (ch)
        {
            /* Caesar encrypt - uses the first byte in buf as shift */
            case 'c':
                caesar_shift_inplace(&buf[1],buf[0], len);
                break;
            /* Caesar decrypt - uses the first byte in buf as shift */
            case 'C':
                caesar_shift_inplace(&buf[1],buf[0]*(-1), len);
                break;
        }

        /* Write to console */
        USART_WriteBlocking(USART0, buf, len);
    }
    return 0 ;
}


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
void toUpped_inplace(uint8_t* c);
uint16_t removeNonPrintable(uint8_t* c, uint16_t len);
/*******************************************************************************
 * Code
 ******************************************************************************/
/*!
 * @brief Main function
 */
void toUpped_inplace(uint8_t* c)
{
	   if (((*c)>=97)&&((*c)<=122))
		   (*c)=(*c)-32;
}

void toLower_inplace(uint8_t* c)
{
	   if (((*c)>=65)&&((*c)<=90))
		   (*c)=(*c)+32;
}

//tested with 620B006142112241114141111142 len: 0E00
uint16_t removeNonPrintable(uint8_t* c, uint16_t len)
{
	uint16_t new_len=len;
	for (uint16_t i=0; i<new_len; i++)
	{
		if (!((c[i]<=127) && (c[i]>=32)))
		{
			for (uint16_t j=i;j<(new_len-1);j++)
			{
				c[j]=c[j+1];
			}
			i--;
			new_len--;
		}
	}
	return new_len;
}
int main(void)
{

    /* Init board hardware. */
    BOARD_InitHardware();
    BOARD_InitDebugConsole();
    /* Add user custom codes below */

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
        case 'b':
            len = removeNonPrintable(buf, len);
            break;
        }

        USART_WriteBlocking(USART0, buf, len);
    }
}

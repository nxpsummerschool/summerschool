
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

uint8_t kamastra_table[256];

void kamasutra_inplace(uint8_t* c, uint16_t len)
{
	for (int i=0; i<len; i++)
	{
		c[i]=kamastra_table[c[i]];
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

    /* Init Kamasutra table */
    kamastra_table['W']='N';
    kamastra_table['Z']='H';
    kamastra_table['V']='G';
    kamastra_table['P']='X';
    kamastra_table['O']='K';
    kamastra_table['F']='S';
    kamastra_table['D']='I';
    kamastra_table['E']='C';
    kamastra_table['A']='J';
    kamastra_table['B']='U';
    kamastra_table['R']='T';
    kamastra_table['M']='Q';
    kamastra_table['Y']='L';
    kamastra_table['N']='W';
    kamastra_table['H']='z';
    kamastra_table['G']='V';
    kamastra_table['X']='P';
    kamastra_table['K']='O';
    kamastra_table['S']='F';
    kamastra_table['I']='D';
    kamastra_table['C']='E';
    kamastra_table['J']='A';
    kamastra_table['U']='B';
    kamastra_table['T']='R';
    kamastra_table['Q']='M';
    kamastra_table['L']='Y';

    /* Enter an infinite loop, just incrementing a counter. */
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

        /* Do the Kamasutra encryption */
        kamasutra_inplace(&buf[0], len);

        /* Write to console */
        USART_WriteBlocking(USART0, buf, len);
    }
}

/*
 * Copyright 2016-2023 NXP
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of NXP Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * @file    K32W061_Project_ex1.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "K32W061.h"
#include "fsl_debug_console.h"
#include "fsl_pwm.h"
#include "fsl_iocon.h"
#include "fsl_usart.h"
/* TODO: insert other include files here. */



/* TODO: insert other definitions and declarations here. */

void mod_with_offset_inplace(uint8_t* c, int8_t shift, uint8_t offset, uint8_t modulo)
{
	int8_t cd =*c - offset + shift;
	*c =  cd<0?cd%modulo+modulo:cd%modulo;
	*c = *c + offset;
}
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
uint8_t kamastra_table[256];


void kamasutra_inplace(uint8_t* c, uint16_t len)
{
	for (int i=0; i<len; i++)
	{
		c[i]=kamastra_table[c[i]];
	}
}
/*
 * @brief   Application entry point.
 *
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
    const uint32_t port0_pin8_config = (/* Pin is configured as USART0_TXD */
                                           IOCON_PIO_FUNC2 |
                                           /* Selects pull-up function */
                                           IOCON_PIO_MODE_PULLUP |
                                           /* Standard mode, output slew rate control is disabled */
                                           IOCON_PIO_SLEW0_STANDARD |
                                           /* Input function is not inverted */
                                           IOCON_PIO_INV_DI |
                                           /* Enables digital function */
                                           IOCON_PIO_DIGITAL_EN |
                                           /* Input filter disabled */
                                           IOCON_PIO_INPFILT_OFF |
                                           /* Standard mode, output slew rate control is disabled */
                                           IOCON_PIO_SLEW1_STANDARD |
                                           /* Open drain is disabled */
                                           IOCON_PIO_OPENDRAIN_DI |
                                           /* SSEL is disabled */
                                           IOCON_PIO_SSEL_DI);
       /* PORT0 PIN8 (coords: 11) is configured as USART0_TXD */
       IOCON_PinMuxSet(IOCON, 0U, 8U, port0_pin8_config);

       const uint32_t port0_pin9_config = (/* Pin is configured as USART0_RXD */
                                           IOCON_PIO_FUNC2 |
                                           /* Selects pull-up function */
                                           IOCON_PIO_MODE_PULLUP |
                                           /* Standard mode, output slew rate control is disabled */
                                           IOCON_PIO_SLEW0_STANDARD |
                                           /* Input function is not inverted */
                                           IOCON_PIO_INV_DI |
                                           /* Enables digital function */
                                           IOCON_PIO_DIGITAL_EN |
                                           /* Input filter disabled */
                                           IOCON_PIO_INPFILT_OFF |
                                           /* Standard mode, output slew rate control is disabled */
                                           IOCON_PIO_SLEW1_STANDARD |
                                           /* Open drain is disabled */
                                           IOCON_PIO_OPENDRAIN_DI |
                                           /* SSEL is disabled */
                                           IOCON_PIO_SSEL_DI);
       /* PORT0 PIN9 (coords: 12) is configured as USART0_RXD */
       IOCON_PinMuxSet(IOCON, 0U, 9U, port0_pin9_config);
       uint8_t ch;
       uint16_t len;
       uint8_t buf[256];
       usart_config_t config;

	   USART_GetDefaultConfig(&config);
	   config.baudRate_Bps = 115200U;
	   config.enableTx     = true;
	   config.enableRx     = true;

	   USART_Init(USART0, &config, CLOCK_GetFreq(kCLOCK_Fro32M));
	   kamastra_table['W']='N';
	   kamastra_table['z']='H';
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
	   while (1)
	   {
		   USART_ReadBlocking(USART0, &ch, 1);
		   USART_ReadBlocking(USART0, &len, 2);
		   USART_ReadBlocking(USART0, buf, len);

		   switch (ch)
		   {
		   //Caesar encrypt
		   case 'c':
			   caesar_shift_inplace(&buf[1],buf[0], len);
			   break;
		   //Caesar decrypt
		   case 'C':
			   caesar_shift_inplace(&buf[1],buf[0]*(-1), len);
			   break;
		   case 'K':
			   kamasutra_inplace(&buf[0], len);
			   break;
		   }

		   USART_WriteBlocking(USART0, buf, len);
	   }
		return 0 ;
}

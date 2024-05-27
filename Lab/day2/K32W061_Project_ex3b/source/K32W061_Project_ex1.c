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
       usart_config_t config;

	   USART_GetDefaultConfig(&config);
	   config.baudRate_Bps = 115200U;
	   config.enableTx     = true;
	   config.enableRx     = true;

	   USART_Init(USART0, &config, CLOCK_GetFreq(kCLOCK_Fro32M));

	   //USART_WriteBlocking(DEMO_USART, txbuff, sizeof(txbuff) - 1);
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
		return 0 ;
}

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

    PRINTF("Hello World\n");
    gpio_pin_config_t config =
    {
       kGPIO_DigitalOutput,
       0,
    };
    GPIO_PinInit(BOARD_LED_RED1_GPIO, BOARD_LED_RED1_GPIO_PORT, BOARD_LED_RED1_GPIO_PIN, &config);
    GPIO_PinInit(BOARD_LED_RED2_GPIO, BOARD_LED_RED2_GPIO_PORT, BOARD_LED_RED2_GPIO_PIN, &config);
    GPIO_PinWrite(BOARD_LED_RED1_GPIO, BOARD_LED_RED1_GPIO_PORT, BOARD_LED_RED1_GPIO_PIN,1);
    GPIO_PinWrite(BOARD_LED_RED2_GPIO, BOARD_LED_RED2_GPIO_PORT, BOARD_LED_RED2_GPIO_PIN,1);
    /* Force the counter to be placed into memory. */
    volatile static int i = 0 ;
    /* Enter an infinite loop, just incrementing a counter. */
    int count=0;
    int previous_state=0;
    int state=0;
    while (1)
    {
    	i++;
        int new_state=GPIO_PinRead(BOARD_SW1_GPIO, BOARD_SW1_GPIO_PORT, BOARD_SW1_GPIO_PIN);
        if (new_state!=previous_state)
        {
            count++;
        }
        else
        {
            count=0;
        }
        for (volatile int j=0;j<=0xFFFF;j++);
        if (count>20)
        {
            count=0;
            if (new_state==1)
            {
            	if (state<4)
            	{
            		state++;
            	}
            		else
				{
            		state=0;
				}
            }
            previous_state=new_state;
        }

        switch (state)
        {
        case 0:
        	GPIO_PinWrite(BOARD_LED_RED1_GPIO, BOARD_LED_RED1_GPIO_PORT, BOARD_LED_RED1_GPIO_PIN,0);
        	GPIO_PinWrite(BOARD_LED_RED2_GPIO, BOARD_LED_RED2_GPIO_PORT, BOARD_LED_RED2_GPIO_PIN,1);
        	break;
        case 1:
        	GPIO_PinWrite(BOARD_LED_RED1_GPIO, BOARD_LED_RED1_GPIO_PORT, BOARD_LED_RED1_GPIO_PIN,0);
        	GPIO_PinWrite(BOARD_LED_RED2_GPIO, BOARD_LED_RED2_GPIO_PORT, BOARD_LED_RED2_GPIO_PIN,0);
        	break;
        case 2:
        	GPIO_PinWrite(BOARD_LED_RED1_GPIO, BOARD_LED_RED1_GPIO_PORT, BOARD_LED_RED1_GPIO_PIN,1);
        	GPIO_PinWrite(BOARD_LED_RED2_GPIO, BOARD_LED_RED2_GPIO_PORT, BOARD_LED_RED2_GPIO_PIN,0);
        	break;
        case 3:
        	GPIO_PinWrite(BOARD_LED_RED1_GPIO, BOARD_LED_RED1_GPIO_PORT, BOARD_LED_RED1_GPIO_PIN,(i>>6)%2);
        	GPIO_PinWrite(BOARD_LED_RED2_GPIO, BOARD_LED_RED2_GPIO_PORT, BOARD_LED_RED2_GPIO_PIN,(i>>6)%2);
        	break;
        case 4:
        	GPIO_PinWrite(BOARD_LED_RED1_GPIO, BOARD_LED_RED1_GPIO_PORT, BOARD_LED_RED1_GPIO_PIN,1);
        	GPIO_PinWrite(BOARD_LED_RED2_GPIO, BOARD_LED_RED2_GPIO_PORT, BOARD_LED_RED2_GPIO_PIN,1);
        	break;
        }

    }
    return 0 ;
}

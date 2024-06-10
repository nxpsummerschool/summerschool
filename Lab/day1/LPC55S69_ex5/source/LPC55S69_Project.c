/*
 * Copyright 2016-2024 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/**
 * @file    LPC55S69_Project.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "LPC55S69_cm33_core0.h"
#include "fsl_debug_console.h"
#include "fsl_power.h"
#include "core_cm33.h"

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
    CLOCK_EnableClock(kCLOCK_Gpio1);

    /* Initialise GPIO functionality on the RGB pins */
    gpio_pin_config_t LED_config = {
            .pinDirection = kGPIO_DigitalOutput,
            .outputLogic = 0U
        };

	GPIO_PinInit(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN, &LED_config);
	GPIO_PinInit(BOARD_LED_RED_GPIO, BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN, &LED_config);
	GPIO_PinInit(BOARD_LED_GREEN_GPIO, BOARD_LED_GREEN_GPIO_PORT, BOARD_LED_GREEN_GPIO_PIN, &LED_config);


    /* Initialise GPIO functionality on the button pin */
    gpio_pin_config_t Button_config = {
            .pinDirection = kGPIO_DigitalInput,
            .outputLogic = 0U
        };

    IOCON_PinMuxSet(IOCON, BOARD_SW3_GPIO_PORT, BOARD_SW3_GPIO_PIN, IOCON_FUNC0 | IOCON_MODE_PULLUP);
	GPIO_PinInit(BOARD_SW3_GPIO, BOARD_SW3_GPIO_PORT, BOARD_SW3_GPIO_PIN, &Button_config);


	/* Turn the Blue LED OFF */
	GPIO_PinWrite(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN, LOGIC_LED_OFF);
	/* Turn the Red LED OFF */
	GPIO_PinWrite(BOARD_LED_RED_GPIO, BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN, LOGIC_LED_OFF);
	/* Turn the Red LED OFF */
	GPIO_PinWrite(BOARD_LED_GREEN_GPIO, BOARD_LED_GREEN_GPIO_PORT, BOARD_LED_GREEN_GPIO_PIN, LOGIC_LED_OFF);

    /* Force the counter to be placed into memory. */
    volatile static int i = 0;

    /* Enter an infinite loop, just incrementing a counter. */
    int count = 0;
    int previous_state = 0;
    int state = 0;

    while (1)
    {
    	 while (1)
		{
			i++;
			int new_state = GPIO_PinRead(BOARD_SW3_GPIO, BOARD_SW3_GPIO_PORT, BOARD_SW3_GPIO_PIN);
			if (new_state != previous_state)
			{
				count++;
			}
			else
			{
				count=0;
			}

			for (volatile int j=0;j<=0xFFFFF;j++);

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
		    	GPIO_PinWrite(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN, LOGIC_LED_OFF);
		    	GPIO_PinWrite(BOARD_LED_RED_GPIO, BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN, LOGIC_LED_ON);
		    	GPIO_PinWrite(BOARD_LED_GREEN_GPIO, BOARD_LED_GREEN_GPIO_PORT, BOARD_LED_GREEN_GPIO_PIN, LOGIC_LED_OFF);
				break;
			case 1:
		    	GPIO_PinWrite(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN, LOGIC_LED_ON);
		    	GPIO_PinWrite(BOARD_LED_RED_GPIO, BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN, LOGIC_LED_OFF);
		    	GPIO_PinWrite(BOARD_LED_GREEN_GPIO, BOARD_LED_GREEN_GPIO_PORT, BOARD_LED_GREEN_GPIO_PIN, LOGIC_LED_OFF);
				break;
			case 2:
		    	GPIO_PinWrite(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN, LOGIC_LED_OFF);
		    	GPIO_PinWrite(BOARD_LED_RED_GPIO, BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN, LOGIC_LED_OFF);
		    	GPIO_PinWrite(BOARD_LED_GREEN_GPIO, BOARD_LED_GREEN_GPIO_PORT, BOARD_LED_GREEN_GPIO_PIN, LOGIC_LED_ON);
				break;
			case 3:
		    	GPIO_PinWrite(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN, LOGIC_LED_OFF);
		    	GPIO_PinWrite(BOARD_LED_RED_GPIO, BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN, LOGIC_LED_ON);
		    	GPIO_PinWrite(BOARD_LED_GREEN_GPIO, BOARD_LED_GREEN_GPIO_PORT, BOARD_LED_GREEN_GPIO_PIN, LOGIC_LED_ON);
				break;
			case 4:
		    	GPIO_PinWrite(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN, LOGIC_LED_ON);
		    	GPIO_PinWrite(BOARD_LED_RED_GPIO, BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN, LOGIC_LED_OFF);
		    	GPIO_PinWrite(BOARD_LED_GREEN_GPIO, BOARD_LED_GREEN_GPIO_PORT, BOARD_LED_GREEN_GPIO_PIN, LOGIC_LED_ON);
				break;
			}
		}
    }
}

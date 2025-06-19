
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
    BOARD_InitBUTTONsPins();

    /* Use the same LED_config for all LEDs */
      gpio_pin_config_t LED_config = {
        .pinDirection = kGPIO_DigitalOutput,
        .outputLogic = 0U
    };

    /* Initialize GPIO functionality on the RGB pins */
    GPIO_PinInit(BOARD_LED_RED_GPIO,   BOARD_LED_RED_GPIO_PORT,   BOARD_LED_RED_GPIO_PIN,    &LED_config);
	GPIO_PinWrite(BOARD_LED_RED_GPIO,  BOARD_LED_RED_GPIO_PORT,   BOARD_LED_RED_GPIO_PIN,    LOGIC_LED_OFF);

	/* Enter an infinite loop, just incrementing a counter. */
	int count=0;
	int previous_state=0;

	while (1)
	{
		/* Read USER switch, if pressed, new_state = 0, else new_state = 1 */
        int new_state=GPIO_PinRead(BOARD_SW3_GPIO, BOARD_SW3_GPIO_PORT, BOARD_SW3_GPIO_PIN);
		if (new_state!=previous_state)
		{
			count++;
			/* Add delay for debouncing */
			for (volatile int j=0;j<=0xFFFF;j++);
		}
		else
		{
			count=0;
		}

		/* After this magic threshold, the LED shall take the new_state value 0->ON, 1->OFF */
		if (count>20)
		{
			count=0;
			GPIO_PinWrite(BOARD_LED_RED_GPIO, BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN, new_state);
			previous_state=new_state;
		}
	}
}

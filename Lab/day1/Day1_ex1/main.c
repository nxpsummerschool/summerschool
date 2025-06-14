
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

    /* Define a configuration for the LED pin */
    gpio_pin_config_t LED_config = {
        .pinDirection = kGPIO_DigitalOutput, /* Set it as output */
        .outputLogic = 0U                    /* Defaults as ON  */
    };

    /* Initialise GPIO functionality on the RGB pins */
    GPIO_PinInit(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN, &LED_config);

    /* Turn the Blue LED OFF */
    GPIO_PinWrite(BOARD_LED_BLUE_GPIO, BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN, 1U);

    /* Force the counter to be placed into memory */
    volatile static int i = 0 ;

    while (1)
    {
        GPIO_PortToggle(GPIO, BOARD_LED_BLUE_GPIO_PORT, 1u << BOARD_LED_BLUE_GPIO_PIN);

        i++;

        for (volatile int j=0; j<=0xFFFFFF; j++);
    }
}

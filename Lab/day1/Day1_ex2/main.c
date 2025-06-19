
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

    /* Use the same LED_config for all LEDs */
    gpio_pin_config_t LED_config = {
        .pinDirection = kGPIO_DigitalOutput,
        .outputLogic = 0U
    };

    /* Initialize GPIO functionality on the RGB pins */
    GPIO_PinInit(BOARD_LED_BLUE_GPIO,   BOARD_LED_BLUE_GPIO_PORT,   BOARD_LED_BLUE_GPIO_PIN,    &LED_config);
    GPIO_PinInit(BOARD_LED_RED_GPIO,    BOARD_LED_RED_GPIO_PORT,    BOARD_LED_RED_GPIO_PIN,     &LED_config);

    /* Turn the Blue LED OFF */
    GPIO_PinWrite(BOARD_LED_BLUE_GPIO,  BOARD_LED_BLUE_GPIO_PORT,   BOARD_LED_BLUE_GPIO_PIN,    1U);
    /* Turn the Red LED ON */
    GPIO_PinWrite(BOARD_LED_RED_GPIO,   BOARD_LED_RED_GPIO_PORT,    BOARD_LED_RED_GPIO_PIN,     0U);

    while (1)
    {
        /* Just toggle the ports, last param is actually a mask */
        GPIO_PortToggle(GPIO, BOARD_LED_BLUE_GPIO_PORT,     1u << BOARD_LED_BLUE_GPIO_PIN);
        GPIO_PortToggle(GPIO, BOARD_LED_RED_GPIO_PORT,      1u << BOARD_LED_RED_GPIO_PIN);

        for (volatile int j=0; j<=0xFFFFFF; j++);
    }
}


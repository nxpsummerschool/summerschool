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
    const uint32_t port0_pin3_config = (/* Pin is configured as PWM3 */
    									IOCON_FUNC4 |
                                        /* Enables digital function */
                                        IOCON_PIO_DIGITAL_EN);
    /* PORT0 PIN3 (coords: 6) is configured as PWM3 */
    IOCON_PinMuxSet(IOCON, 0U, 3U, port0_pin3_config);

    pwm_config_t pwmConfig={0};
    PWM_GetDefaultConfig(&pwmConfig);

    /* PWM Init with default clock selected */
    PWM_Init(PWM, &pwmConfig);
    /* Set up PWM channel to generate PWM pulse of 10ms with a starting 100% duty cycle */

    /* Get the default source clock frequency */
    uint32_t pwmSourceClockFreq;
    pwmSourceClockFreq = CLOCK_GetFreq(kCLOCK_Pwm);

    pwm_setup_t pwmChan={0};
    pwmChan.pol_ctrl      = kPWM_SetLowOnMatchHighOnPeriod;
    pwmChan.period_val    = USEC_TO_COUNT(10000, pwmSourceClockFreq);
    /* Compare value starts same as period value to give a 100% starting duty cycle */
    pwmChan.comp_val = pwmChan.period_val/4;
    PWM_SetupPwm(PWM, kPWM_Pwm3, (pwm_setup_t *)&pwmChan);

    /* Start the PWM generation channel */
    PWM_StartTimer(PWM, kPWM_Pwm3);

    /* Force the counter to be placed into memory. */
    volatile static int i = 0 ;
    /* Enter an infinite loop, just incrementing a counter. */
    while(1) {
        i++ ;
        /* 'Dummy' NOP to allow source level single stepping of
            tight while() loop */
        __asm volatile ("nop");
    }
    return 0 ;
}

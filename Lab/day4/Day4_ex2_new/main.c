
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

/*******************************************************************************
 * Code
 ******************************************************************************/
/*!
 * @brief Main function
 */
uint8_t memcmp_uint8(const uint8_t *a, const uint8_t *b, size_t len) {
    for (size_t i = 0; i < len; i++) {
        for (volatile size_t j=0; j<=0x4FFFFFF;j++);
        if (a[i] != b[i]) {
            return a[i] - b[i]; // Non-constant time: exits on first difference
        }
    }
    return 0; // Arrays are equal
}

uint8_t memcmp_uint8_consttime(const uint8_t *a, const uint8_t *b, size_t len) {
    uint8_t result = 0;
    for (size_t i = 0; i < len; i++) {
        for (volatile size_t j=0; j<=0x4FFFFFF;j++);
        result |= a[i] ^ b[i];
    }
    return result; // returns 0 if equal, non-zero otherwise
}

int main(void)
{

    /* Init board hardware. */
    BOARD_InitHardware();
    BOARD_InitDebugConsole();
    /* Add user custom codes below */
    uint8_t ch;
    uint8_t len;
    uint8_t buf[256];
    while (1)
    {
        USART_ReadBlocking(USART0, &ch, 1);
        USART_ReadBlocking(USART0, &len, 1);
        USART_ReadBlocking(USART0, buf, len);
        uint8_t secret[3]={0,1,2};
        uint8_t result=0;
        switch (ch)
        {
        case 'c':
            result = memcmp_uint8_consttime(secret,buf,3);
            break;
        case 'n':
            result = memcmp_uint8(secret,buf,3);
            break;
        }

        USART_WriteBlocking(USART0,&result, 1);
    }
}

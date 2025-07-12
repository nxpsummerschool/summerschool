
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
#include <stdio.h>
#include <math.h>
#include "AES.h"


#define SIZE 50
#define RESULT_SIZE (2 * SIZE)


void multiply_big_numbers(const uint8_t a[SIZE], const uint8_t b[SIZE], uint8_t result[RESULT_SIZE]) {
    memset(result, 0, RESULT_SIZE);

    for (int i = 0; i < SIZE; ++i) {
        uint16_t carry = 0;
        for (int j = 0; j < SIZE; ++j) {
            uint16_t product = a[i] * b[j] + result[i + j] + carry;
            result[i + j] = product & 0xFF;
            carry = product >> 8;
        }
        result[i + SIZE] = carry;
    }
}


typedef enum encryption_type
{
    CBCMAC = 0U,
    CTR = 1U,
    CCM = 2U
} encryption_type_t;

/* Secret text only readable using CCM with key specified in main*/
/*Felicitari!           Ai finalizat cu succes Scoala de Vara NXP!*/
uint8_t secret_text[64] =  {0xd7, 0x70, 0x72, 0x34, 0x68, 0x13, 0x6b, 0x7a,
                            0xb2, 0xbe, 0x8d, 0xf0, 0x8e, 0x1e, 0x71, 0xc4,
                            0x37, 0x2e, 0x03, 0xf1, 0x53, 0x7c, 0x93, 0xbc,
                            0x59, 0x80, 0x53, 0xe6, 0x1a, 0xa5, 0xa1, 0x69,
                            0x29, 0x79, 0x1c, 0x8e, 0xd3, 0x16, 0x76, 0x10,
                            0xf6, 0x1a, 0xd0, 0x65, 0xb4, 0xb1, 0xdb, 0x41,
                            0x60, 0xf7, 0x6f, 0x68, 0xa0, 0x5c, 0x79, 0x14,
                            0x38, 0xcd, 0xfc, 0x3b, 0xb0, 0x26, 0x5c, 0x35};



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
    BOARD_InitDebugConsole();
    struct AES_ctx aes;

    uint8_t key[32] =   {   0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe,
                            0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77, 0x81,
                            0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7,
                            0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14, 0xdf, 0xf4};

    uint8_t plain[64] = {   0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96,
                            0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17, 0x2a,
		                    0xae, 0x2d, 0x8a, 0x57, 0x1e, 0x03, 0xac, 0x9c,
		                    0x9e, 0xb7, 0x6f, 0xac, 0x45, 0xaf, 0x8e, 0x51,
		                    0x30, 0xc8, 0x1c, 0x46, 0xa3, 0x5c, 0xe4, 0x11,
		                    0xe5, 0xfb, 0xc1, 0x19, 0x1a, 0x0a, 0x52, 0xef,
		                    0xf6, 0x9f, 0x24, 0x45, 0xdf, 0x4f, 0x9b, 0x17,
		                    0xad, 0x2b, 0x41, 0x7b, 0xe6, 0x6c, 0x37, 0x10};

    uint8_t output[64];
    uint8_t iv[16];
    uint8_t tag[16];

    encryption_type_t encryption_type;
    uint8_t isEncrypt;

    while (1)
    {
        USART_ReadBlocking(USART0, &encryption_type, 1);
        USART_ReadBlocking(USART0, &isEncrypt, 1);

        memset(iv, 0, 16);
        memset(tag, 0, 16);
        AES_init_ctx_iv(&aes, key,iv);

        switch (encryption_type){
            case CBCMAC:
                AES_CBCMAC(&aes, plain, tag, 64);
                USART_WriteBlocking(USART0, tag, 16);
                break;
            case CTR:
                AES_CTR_crypt_buffer(&aes, plain, output, 64);
                USART_WriteBlocking(USART0, output, 64);
                break;
            case CCM:
                AES_CCM_crypt(&aes, secret_text, output, 64, tag);
                USART_WriteBlocking(USART0, output, 64);
                break;
        }

    }
}

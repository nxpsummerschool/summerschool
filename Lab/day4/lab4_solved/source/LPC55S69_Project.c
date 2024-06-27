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
/* TODO: insert other include files here. */
#include "AES/AES.h"
#include <stdlib.h>
/* TODO: insert other definitions and declarations here. */

/*
 * @brief   Application entry point.
 */

struct AES_ctx aes;
uint8_t key[32] = {0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe,
                   0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77, 0x81,
                   0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7,
                   0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14, 0xdf, 0xf4 };

uint8_t plain[64] =  {0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96,
        0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17, 0x2a,
		 0xae, 0x2d, 0x8a, 0x57, 0x1e, 0x03, 0xac, 0x9c,
		 0x9e, 0xb7, 0x6f, 0xac, 0x45, 0xaf, 0x8e, 0x51,
		 0x30, 0xc8, 0x1c, 0x46, 0xa3, 0x5c, 0xe4, 0x11,
		 0xe5, 0xfb, 0xc1, 0x19, 0x1a, 0x0a, 0x52, 0xef,
		 0xf6, 0x9f, 0x24, 0x45, 0xdf, 0x4f, 0x9b, 0x17,
		 0xad, 0x2b, 0x41, 0x7b, 0xe6, 0x6c, 0x37, 0x10};
uint8_t IV[16] = {0x00U, 0x01U, 0x02U, 0x03U, 0x04U, 0x05U, 0x06U, 0x07U, 0x08U, 0x09U, 0x0aU, 0x0bU, 0x0cU, 0x0dU, 0x0eU, 0x0fU};
uint8_t cipher[16];
uint8_t encripted[64];

void ReadKey()
{
	USART_ReadBlocking(USART0,key, AES_KEYLEN);
}
void ReadIV()
{
	for(uint8_t i=0;i<AES_BLOCKLEN;i++)
	USART_ReadBlocking(USART0,&IV[i],1);
}

void ReadData(uint8_t blokNum)
{
	int i= 0;
	while(i<AES_BLOCKLEN*blokNum){
		USART_ReadBlocking(USART0, &plain[i],1);
		i++;
	}
}
uint8_t dict[16]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
void AES256ECB(){
	uint8_t ch=0;
	uint8_t len=0;
	AES_init_ctx(&aes, key);
	PRINTF("please enter 'e' for encrypt or 'd' for decrypt");
	while('e'!=ch && 'd'!=ch)
	{
		USART_ReadBlocking(USART0, &ch, 1);
	}
	PRINTF("please enter number of data bloks");
	USART_ReadBlocking(USART0, &len, 1);
	ReadData(len);
	if('e' == ch)
	{
		AES_ECB_encrypt(&aes, plain);
	}
	else if ('d' == ch )
	{
		AES_ECB_decrypt(&aes, plain);
	}

	for( int i=0;i<len*AES_BLOCKLEN;i++)
	{
		USART_WriteBlocking(USART0, &dict[plain[i]>>4],1);
		USART_WriteBlocking(USART0, &dict[plain[i]&0x0F],1);
	}

}

void AES256CBC(){
	uint8_t ch=0;
	uint8_t len=0;
	PRINTF("please enter IV (16 butes)");
	ReadIV();
	AES_init_ctx_iv(&aes, key,IV);
	PRINTF("please enter 'e' for encrypt or 'd' for decrypt");
	while('e'!=ch && 'd'!=ch)
	{
		USART_ReadBlocking(USART0, &ch, 1);
	}
	PRINTF("please enter number of data bloks");
	USART_ReadBlocking(USART0, &len, 1);
	ReadData(len);
	if('e' == ch)
	{
		AES_CBC_encrypt(&aes, plain,len);
		for( int i=0;i<len*AES_BLOCKLEN;i++)
		{
			USART_WriteBlocking(USART0, &dict[plain[i]>>4],1);
			USART_WriteBlocking(USART0, &dict[plain[i]&0x0F],1);
		}
	}
	else if ('d' == ch )
	{
		AES_CBC_decrypt(&aes, plain,len);
		for( int i=0;i<len*AES_BLOCKLEN;i++)
		{
			USART_WriteBlocking(USART0, &plain[i],1);
		}
	}



}

void AES256CBCMAC(){
	uint8_t ch=0;
	uint8_t len=0;
	memset(IV,0x00,16);
	AES_init_ctx_iv(&aes, key,IV);
	PRINTF("please enter number of data bloks");
	USART_ReadBlocking(USART0, &len, 1);
	ReadData(len);

	AES_CBC_encrypt(&aes, plain,len);


	for( int i=(len-1)*AES_BLOCKLEN;i<len*AES_BLOCKLEN;i++)
	{
		USART_WriteBlocking(USART0, &dict[plain[i]>>4],1);
		USART_WriteBlocking(USART0, &dict[plain[i]&0x0F],1);
	}

}

void AES256CTR()
{
	uint8_t ch=0;
	uint8_t len=0;
	PRINTF("please enter IV (16 bytes)");
	ReadIV();
	AES_init_ctx_iv(&aes, key,IV);
	PRINTF("please enter 'e' for encrypt or 'd' for decrypt");
	while('e'!=ch && 'd'!=ch)
	{
		USART_ReadBlocking(USART0, &ch, 1);
	}
	PRINTF("please enter number of data blocks");
	USART_ReadBlocking(USART0, &len, 1);
	ReadData(len);

	AES_CTR_xcrypt_buffer(&aes, plain,len);

	for( int i=0;i<len*AES_BLOCKLEN;i++)
	{
		USART_WriteBlocking(USART0, &dict[plain[i]>>4],1);
		USART_WriteBlocking(USART0, &dict[plain[i]&0x0F],1);
	}

}
int main(void) {

    /* Init board hardware. */
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitBootPeripherals();
#ifndef BOARD_INIT_DEBUG_CONSOLE_PERIPHERAL
    /* Init FSL debug console. */
    BOARD_InitDebugConsole();
#endif

    /* Force the counter to be placed into memory. */
    volatile static int i = 0 ;
    /* Enter an infinite loop, just incrementing a counter. */
    uint8_t mode = {0};
    while(1) {
        i++ ;
        USART_ReadBlocking(USART0, &mode, 1);
        switch(mode)
        {
        case 1: AES256ECB();break;
        case 2: AES256CBC();break;
        case 4: AES256CTR();break;
        case 3: AES256CBCMAC();break;
        }
    }
    return 0 ;
}

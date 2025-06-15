/*
 * Copyright  2017 NXP
 * All rights reserved.
 *
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/*${header:start}*/
#include "pin_mux.h"
#include "board.h"
#include <stdbool.h>
#include "fsl_power.h"
#include "fsl_dma.h"
/*${header:end}*/

/*${macro:start}*/
#define EXAMPLE_LPSPI_MASTER_DMA_BASEADDR DMA0
/*${macro:end}*/

/*${function:start}*/
void BOARD_InitHardware(void)
{
    /* set BOD VBAT level to 1.65V */
    POWER_SetBodVbatLevel(kPOWER_BodVbatLevel1650mv, kPOWER_BodHystLevel50mv, false);
    /* Disable SysTick interrupt as it seems to be enabled upon startup */
    SysTick->CTRL &= ~SysTick_CTRL_TICKINT_Msk;

    /* attach 12 MHz clock to FLEXCOMM0 (debug console) */
    CLOCK_AttachClk(BOARD_DEBUG_UART_CLK_ATTACH);

    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitDebugConsole();

    /* attach 12 MHz clock to FLEXCOMM4 (I2C master) */
    CLOCK_AttachClk(kFRO12M_to_FLEXCOMM4);

    /* reset FLEXCOMM for I2C */
    RESET_PeripheralReset(kFC4_RST_SHIFT_RSTn);

    CLOCK_SetClkDiv(kCLOCK_DivPll0Clk, 0U, true);
    CLOCK_SetClkDiv(kCLOCK_DivPll0Clk, 3U, false);

    /* attach 50 MHz clock to HSLSPI */
    CLOCK_AttachClk(kPLL0_DIV_to_HSLSPI);

    /* reset FLEXCOMM for SPI */
    RESET_PeripheralReset(kHSLSPI_RST_SHIFT_RSTn);

    /* reset DMA for SPI */
    RESET_PeripheralReset(kDMA0_RST_SHIFT_RSTn);

    DMA_Init(EXAMPLE_LPSPI_MASTER_DMA_BASEADDR);
}

uint32_t SPI8_GetFreq(void)
{
    return CLOCK_GetHsLspiClkFreq();
}

uint32_t I2C4_GetFreq(void)
{
    return CLOCK_GetFlexCommClkFreq(4U);
}

/*${function:end}*/

/*********************************************************************
*                    SEGGER Microcontroller GmbH                     *
*                        The Embedded Experts                        *
**********************************************************************
*                                                                    *
*            (c) 2014 - 2019 SEGGER Microcontroller GmbH             *
*                                                                    *
*           www.segger.com     Support: support@segger.com           *
*                                                                    *
**********************************************************************
*                                                                    *
* All rights reserved.                                               *
*                                                                    *
* Redistribution and use in source and binary forms, with or         *
* without modification, are permitted provided that the following    *
* conditions are met:                                                *
*                                                                    *
* - Redistributions of source code must retain the above copyright   *
*   notice, this list of conditions and the following disclaimer.    *
*                                                                    *
* - Neither the name of SEGGER Microcontroller GmbH                  *
*   nor the names of its contributors may be used to endorse or      *
*   promote products derived from this software without specific     *
*   prior written permission.                                        *
*                                                                    *
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND             *
* CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,        *
* INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF           *
* MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE           *
* DISCLAIMED.                                                        *
* IN NO EVENT SHALL SEGGER Microcontroller GmbH BE LIABLE FOR        *
* ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR           *
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT  *
* OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;    *
* OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF      *
* LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT          *
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE  *
* USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH   *
* DAMAGE.                                                            *
*                                                                    *
*********************************************************************/

/*****************************************************************************
 *                         Preprocessor Definitions                          *
 *                         ------------------------                          *
 * VECTORS_IN_RAM                                                            *
 *                                                                           *
 *   If defined, an area of RAM will large enough to store the vector table  *
 *   will be reserved.                                                       *
 *                                                                           *
 *****************************************************************************/

  .syntax unified
  .code 16

  .section .init, "ax"
  .align 2

/*****************************************************************************
 * Default Exception Handlers                                                *
 *****************************************************************************/

  .thumb_func
  .weak NMI_Handler
NMI_Handler:
  b .

  .thumb_func
  .weak HardFault_Handler
HardFault_Handler:
  b .

  .thumb_func
  .weak SVC_Handler
SVC_Handler:
  b .

  .thumb_func
  .weak PendSV_Handler
PendSV_Handler:
  b .

  .thumb_func
  .weak SysTick_Handler
SysTick_Handler:
  b .

  .thumb_func
Dummy_Handler:
  b .

#if defined(__OPTIMIZATION_SMALL)

  .weak PM_IRQHandler
  .thumb_set PM_IRQHandler,Dummy_Handler

  .weak MCLK_IRQHandler
  .thumb_set MCLK_IRQHandler,Dummy_Handler

  .weak OSCCTRL_XOSC0_IRQHandler
  .thumb_set OSCCTRL_XOSC0_IRQHandler,Dummy_Handler

  .weak OSCCTRL_XOSC1_IRQHandler
  .thumb_set OSCCTRL_XOSC1_IRQHandler,Dummy_Handler

  .weak OSCCTRL_DFLL_IRQHandler
  .thumb_set OSCCTRL_DFLL_IRQHandler,Dummy_Handler

  .weak OSCCTRL_DPLL0_IRQHandler
  .thumb_set OSCCTRL_DPLL0_IRQHandler,Dummy_Handler

  .weak OSCCTRL_DPLL1_IRQHandler
  .thumb_set OSCCTRL_DPLL1_IRQHandler,Dummy_Handler

  .weak OSC32KCTRL_IRQHandler
  .thumb_set OSC32KCTRL_IRQHandler,Dummy_Handler

  .weak SUPC_OTHER_IRQHandler
  .thumb_set SUPC_OTHER_IRQHandler,Dummy_Handler

  .weak SUPC_BODDET_IRQHandler
  .thumb_set SUPC_BODDET_IRQHandler,Dummy_Handler

  .weak WDT_IRQHandler
  .thumb_set WDT_IRQHandler,Dummy_Handler

  .weak RTC_IRQHandler
  .thumb_set RTC_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_0_IRQHandler
  .thumb_set EIC_EXTINT_0_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_1_IRQHandler
  .thumb_set EIC_EXTINT_1_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_2_IRQHandler
  .thumb_set EIC_EXTINT_2_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_3_IRQHandler
  .thumb_set EIC_EXTINT_3_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_4_IRQHandler
  .thumb_set EIC_EXTINT_4_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_5_IRQHandler
  .thumb_set EIC_EXTINT_5_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_6_IRQHandler
  .thumb_set EIC_EXTINT_6_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_7_IRQHandler
  .thumb_set EIC_EXTINT_7_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_8_IRQHandler
  .thumb_set EIC_EXTINT_8_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_9_IRQHandler
  .thumb_set EIC_EXTINT_9_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_10_IRQHandler
  .thumb_set EIC_EXTINT_10_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_11_IRQHandler
  .thumb_set EIC_EXTINT_11_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_12_IRQHandler
  .thumb_set EIC_EXTINT_12_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_13_IRQHandler
  .thumb_set EIC_EXTINT_13_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_14_IRQHandler
  .thumb_set EIC_EXTINT_14_IRQHandler,Dummy_Handler

  .weak EIC_EXTINT_15_IRQHandler
  .thumb_set EIC_EXTINT_15_IRQHandler,Dummy_Handler

  .weak FREQM_IRQHandler
  .thumb_set FREQM_IRQHandler,Dummy_Handler

  .weak NVMCTRL_0_IRQHandler
  .thumb_set NVMCTRL_0_IRQHandler,Dummy_Handler

  .weak NVMCTRL_1_IRQHandler
  .thumb_set NVMCTRL_1_IRQHandler,Dummy_Handler

  .weak DMAC_0_IRQHandler
  .thumb_set DMAC_0_IRQHandler,Dummy_Handler

  .weak DMAC_1_IRQHandler
  .thumb_set DMAC_1_IRQHandler,Dummy_Handler

  .weak DMAC_2_IRQHandler
  .thumb_set DMAC_2_IRQHandler,Dummy_Handler

  .weak DMAC_3_IRQHandler
  .thumb_set DMAC_3_IRQHandler,Dummy_Handler

  .weak DMAC_OTHER_IRQHandler
  .thumb_set DMAC_OTHER_IRQHandler,Dummy_Handler

  .weak EVSYS_0_IRQHandler
  .thumb_set EVSYS_0_IRQHandler,Dummy_Handler

  .weak EVSYS_1_IRQHandler
  .thumb_set EVSYS_1_IRQHandler,Dummy_Handler

  .weak EVSYS_2_IRQHandler
  .thumb_set EVSYS_2_IRQHandler,Dummy_Handler

  .weak EVSYS_3_IRQHandler
  .thumb_set EVSYS_3_IRQHandler,Dummy_Handler

  .weak EVSYS_OTHER_IRQHandler
  .thumb_set EVSYS_OTHER_IRQHandler,Dummy_Handler

  .weak PAC_IRQHandler
  .thumb_set PAC_IRQHandler,Dummy_Handler

  .weak RAMECC_IRQHandler
  .thumb_set RAMECC_IRQHandler,Dummy_Handler

  .weak SERCOM0_0_IRQHandler
  .thumb_set SERCOM0_0_IRQHandler,Dummy_Handler

  .weak SERCOM0_1_IRQHandler
  .thumb_set SERCOM0_1_IRQHandler,Dummy_Handler

  .weak SERCOM0_2_IRQHandler
  .thumb_set SERCOM0_2_IRQHandler,Dummy_Handler

  .weak SERCOM0_OTHER_IRQHandler
  .thumb_set SERCOM0_OTHER_IRQHandler,Dummy_Handler

  .weak SERCOM1_0_IRQHandler
  .thumb_set SERCOM1_0_IRQHandler,Dummy_Handler

  .weak SERCOM1_1_IRQHandler
  .thumb_set SERCOM1_1_IRQHandler,Dummy_Handler

  .weak SERCOM1_2_IRQHandler
  .thumb_set SERCOM1_2_IRQHandler,Dummy_Handler

  .weak SERCOM1_OTHER_IRQHandler
  .thumb_set SERCOM1_OTHER_IRQHandler,Dummy_Handler

  .weak SERCOM2_0_IRQHandler
  .thumb_set SERCOM2_0_IRQHandler,Dummy_Handler

  .weak SERCOM2_1_IRQHandler
  .thumb_set SERCOM2_1_IRQHandler,Dummy_Handler

  .weak SERCOM2_2_IRQHandler
  .thumb_set SERCOM2_2_IRQHandler,Dummy_Handler

  .weak SERCOM2_OTHER_IRQHandler
  .thumb_set SERCOM2_OTHER_IRQHandler,Dummy_Handler

  .weak SERCOM3_0_IRQHandler
  .thumb_set SERCOM3_0_IRQHandler,Dummy_Handler

  .weak SERCOM3_1_IRQHandler
  .thumb_set SERCOM3_1_IRQHandler,Dummy_Handler

  .weak SERCOM3_2_IRQHandler
  .thumb_set SERCOM3_2_IRQHandler,Dummy_Handler

  .weak SERCOM3_OTHER_IRQHandler
  .thumb_set SERCOM3_OTHER_IRQHandler,Dummy_Handler

  .weak SERCOM4_0_IRQHandler
  .thumb_set SERCOM4_0_IRQHandler,Dummy_Handler

  .weak SERCOM4_1_IRQHandler
  .thumb_set SERCOM4_1_IRQHandler,Dummy_Handler

  .weak SERCOM4_2_IRQHandler
  .thumb_set SERCOM4_2_IRQHandler,Dummy_Handler

  .weak SERCOM4_OTHER_IRQHandler
  .thumb_set SERCOM4_OTHER_IRQHandler,Dummy_Handler

  .weak SERCOM5_0_IRQHandler
  .thumb_set SERCOM5_0_IRQHandler,Dummy_Handler

  .weak SERCOM5_1_IRQHandler
  .thumb_set SERCOM5_1_IRQHandler,Dummy_Handler

  .weak SERCOM5_2_IRQHandler
  .thumb_set SERCOM5_2_IRQHandler,Dummy_Handler

  .weak SERCOM5_OTHER_IRQHandler
  .thumb_set SERCOM5_OTHER_IRQHandler,Dummy_Handler

  .weak SERCOM6_0_IRQHandler
  .thumb_set SERCOM6_0_IRQHandler,Dummy_Handler

  .weak SERCOM6_1_IRQHandler
  .thumb_set SERCOM6_1_IRQHandler,Dummy_Handler

  .weak SERCOM6_2_IRQHandler
  .thumb_set SERCOM6_2_IRQHandler,Dummy_Handler

  .weak SERCOM6_OTHER_IRQHandler
  .thumb_set SERCOM6_OTHER_IRQHandler,Dummy_Handler

  .weak SERCOM7_0_IRQHandler
  .thumb_set SERCOM7_0_IRQHandler,Dummy_Handler

  .weak SERCOM7_1_IRQHandler
  .thumb_set SERCOM7_1_IRQHandler,Dummy_Handler

  .weak SERCOM7_2_IRQHandler
  .thumb_set SERCOM7_2_IRQHandler,Dummy_Handler

  .weak SERCOM7_OTHER_IRQHandler
  .thumb_set SERCOM7_OTHER_IRQHandler,Dummy_Handler

  .weak CAN0_IRQHandler
  .thumb_set CAN0_IRQHandler,Dummy_Handler

  .weak CAN1_IRQHandler
  .thumb_set CAN1_IRQHandler,Dummy_Handler

  .weak USB_OTHER_IRQHandler
  .thumb_set USB_OTHER_IRQHandler,Dummy_Handler

  .weak USB_SOF_HSOF_IRQHandler
  .thumb_set USB_SOF_HSOF_IRQHandler,Dummy_Handler

  .weak USB_TRCPT0_IRQHandler
  .thumb_set USB_TRCPT0_IRQHandler,Dummy_Handler

  .weak USB_TRCPT1_IRQHandler
  .thumb_set USB_TRCPT1_IRQHandler,Dummy_Handler

  .weak GMAC_IRQHandler
  .thumb_set GMAC_IRQHandler,Dummy_Handler

  .weak TCC0_OTHER_IRQHandler
  .thumb_set TCC0_OTHER_IRQHandler,Dummy_Handler

  .weak TCC0_MC0_IRQHandler
  .thumb_set TCC0_MC0_IRQHandler,Dummy_Handler

  .weak TCC0_MC1_IRQHandler
  .thumb_set TCC0_MC1_IRQHandler,Dummy_Handler

  .weak TCC0_MC2_IRQHandler
  .thumb_set TCC0_MC2_IRQHandler,Dummy_Handler

  .weak TCC0_MC3_IRQHandler
  .thumb_set TCC0_MC3_IRQHandler,Dummy_Handler

  .weak TCC0_MC4_IRQHandler
  .thumb_set TCC0_MC4_IRQHandler,Dummy_Handler

  .weak TCC0_MC5_IRQHandler
  .thumb_set TCC0_MC5_IRQHandler,Dummy_Handler

  .weak TCC1_OTHER_IRQHandler
  .thumb_set TCC1_OTHER_IRQHandler,Dummy_Handler

  .weak TCC1_MC0_IRQHandler
  .thumb_set TCC1_MC0_IRQHandler,Dummy_Handler

  .weak TCC1_MC1_IRQHandler
  .thumb_set TCC1_MC1_IRQHandler,Dummy_Handler

  .weak TCC1_MC2_IRQHandler
  .thumb_set TCC1_MC2_IRQHandler,Dummy_Handler

  .weak TCC1_MC3_IRQHandler
  .thumb_set TCC1_MC3_IRQHandler,Dummy_Handler

  .weak TCC2_OTHER_IRQHandler
  .thumb_set TCC2_OTHER_IRQHandler,Dummy_Handler

  .weak TCC2_MC0_IRQHandler
  .thumb_set TCC2_MC0_IRQHandler,Dummy_Handler

  .weak TCC2_MC1_IRQHandler
  .thumb_set TCC2_MC1_IRQHandler,Dummy_Handler

  .weak TCC2_MC2_IRQHandler
  .thumb_set TCC2_MC2_IRQHandler,Dummy_Handler

  .weak TCC3_OTHER_IRQHandler
  .thumb_set TCC3_OTHER_IRQHandler,Dummy_Handler

  .weak TCC3_MC0_IRQHandler
  .thumb_set TCC3_MC0_IRQHandler,Dummy_Handler

  .weak TCC3_MC1_IRQHandler
  .thumb_set TCC3_MC1_IRQHandler,Dummy_Handler

  .weak TCC4_OTHER_IRQHandler
  .thumb_set TCC4_OTHER_IRQHandler,Dummy_Handler

  .weak TCC4_MC0_IRQHandler
  .thumb_set TCC4_MC0_IRQHandler,Dummy_Handler

  .weak TCC4_MC1_IRQHandler
  .thumb_set TCC4_MC1_IRQHandler,Dummy_Handler

  .weak TC0_IRQHandler
  .thumb_set TC0_IRQHandler,Dummy_Handler

  .weak TC1_IRQHandler
  .thumb_set TC1_IRQHandler,Dummy_Handler

  .weak TC2_IRQHandler
  .thumb_set TC2_IRQHandler,Dummy_Handler

  .weak TC3_IRQHandler
  .thumb_set TC3_IRQHandler,Dummy_Handler

  .weak TC4_IRQHandler
  .thumb_set TC4_IRQHandler,Dummy_Handler

  .weak TC5_IRQHandler
  .thumb_set TC5_IRQHandler,Dummy_Handler

  .weak TC6_IRQHandler
  .thumb_set TC6_IRQHandler,Dummy_Handler

  .weak TC7_IRQHandler
  .thumb_set TC7_IRQHandler,Dummy_Handler

  .weak PDEC_OTHER_IRQHandler
  .thumb_set PDEC_OTHER_IRQHandler,Dummy_Handler

  .weak PDEC_MC0_IRQHandler
  .thumb_set PDEC_MC0_IRQHandler,Dummy_Handler

  .weak PDEC_MC1_IRQHandler
  .thumb_set PDEC_MC1_IRQHandler,Dummy_Handler

  .weak ADC0_OTHER_IRQHandler
  .thumb_set ADC0_OTHER_IRQHandler,Dummy_Handler

  .weak ADC0_RESRDY_IRQHandler
  .thumb_set ADC0_RESRDY_IRQHandler,Dummy_Handler

  .weak ADC1_OTHER_IRQHandler
  .thumb_set ADC1_OTHER_IRQHandler,Dummy_Handler

  .weak ADC1_RESRDY_IRQHandler
  .thumb_set ADC1_RESRDY_IRQHandler,Dummy_Handler

  .weak AC_IRQHandler
  .thumb_set AC_IRQHandler,Dummy_Handler

  .weak DAC_OTHER_IRQHandler
  .thumb_set DAC_OTHER_IRQHandler,Dummy_Handler

  .weak DAC_EMPTY_0_IRQHandler
  .thumb_set DAC_EMPTY_0_IRQHandler,Dummy_Handler

  .weak DAC_EMPTY_1_IRQHandler
  .thumb_set DAC_EMPTY_1_IRQHandler,Dummy_Handler

  .weak DAC_RESRDY_0_IRQHandler
  .thumb_set DAC_RESRDY_0_IRQHandler,Dummy_Handler

  .weak DAC_RESRDY_1_IRQHandler
  .thumb_set DAC_RESRDY_1_IRQHandler,Dummy_Handler

  .weak I2S_IRQHandler
  .thumb_set I2S_IRQHandler,Dummy_Handler

  .weak PCC_IRQHandler
  .thumb_set PCC_IRQHandler,Dummy_Handler

  .weak AES_IRQHandler
  .thumb_set AES_IRQHandler,Dummy_Handler

  .weak TRNG_IRQHandler
  .thumb_set TRNG_IRQHandler,Dummy_Handler

  .weak ICM_IRQHandler
  .thumb_set ICM_IRQHandler,Dummy_Handler

  .weak PUKCC_IRQHandler
  .thumb_set PUKCC_IRQHandler,Dummy_Handler

  .weak QSPI_IRQHandler
  .thumb_set QSPI_IRQHandler,Dummy_Handler

  .weak SDHC0_IRQHandler
  .thumb_set SDHC0_IRQHandler,Dummy_Handler

  .weak SDHC1_IRQHandler
  .thumb_set SDHC1_IRQHandler,Dummy_Handler

#else

  .thumb_func
  .weak PM_IRQHandler
PM_IRQHandler:
  b .

  .thumb_func
  .weak MCLK_IRQHandler
MCLK_IRQHandler:
  b .

  .thumb_func
  .weak OSCCTRL_XOSC0_IRQHandler
OSCCTRL_XOSC0_IRQHandler:
  b .

  .thumb_func
  .weak OSCCTRL_XOSC1_IRQHandler
OSCCTRL_XOSC1_IRQHandler:
  b .

  .thumb_func
  .weak OSCCTRL_DFLL_IRQHandler
OSCCTRL_DFLL_IRQHandler:
  b .

  .thumb_func
  .weak OSCCTRL_DPLL0_IRQHandler
OSCCTRL_DPLL0_IRQHandler:
  b .

  .thumb_func
  .weak OSCCTRL_DPLL1_IRQHandler
OSCCTRL_DPLL1_IRQHandler:
  b .

  .thumb_func
  .weak OSC32KCTRL_IRQHandler
OSC32KCTRL_IRQHandler:
  b .

  .thumb_func
  .weak SUPC_OTHER_IRQHandler
SUPC_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak SUPC_BODDET_IRQHandler
SUPC_BODDET_IRQHandler:
  b .

  .thumb_func
  .weak WDT_IRQHandler
WDT_IRQHandler:
  b .

  .thumb_func
  .weak RTC_IRQHandler
RTC_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_0_IRQHandler
EIC_EXTINT_0_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_1_IRQHandler
EIC_EXTINT_1_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_2_IRQHandler
EIC_EXTINT_2_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_3_IRQHandler
EIC_EXTINT_3_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_4_IRQHandler
EIC_EXTINT_4_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_5_IRQHandler
EIC_EXTINT_5_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_6_IRQHandler
EIC_EXTINT_6_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_7_IRQHandler
EIC_EXTINT_7_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_8_IRQHandler
EIC_EXTINT_8_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_9_IRQHandler
EIC_EXTINT_9_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_10_IRQHandler
EIC_EXTINT_10_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_11_IRQHandler
EIC_EXTINT_11_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_12_IRQHandler
EIC_EXTINT_12_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_13_IRQHandler
EIC_EXTINT_13_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_14_IRQHandler
EIC_EXTINT_14_IRQHandler:
  b .

  .thumb_func
  .weak EIC_EXTINT_15_IRQHandler
EIC_EXTINT_15_IRQHandler:
  b .

  .thumb_func
  .weak FREQM_IRQHandler
FREQM_IRQHandler:
  b .

  .thumb_func
  .weak NVMCTRL_0_IRQHandler
NVMCTRL_0_IRQHandler:
  b .

  .thumb_func
  .weak NVMCTRL_1_IRQHandler
NVMCTRL_1_IRQHandler:
  b .

  .thumb_func
  .weak DMAC_0_IRQHandler
DMAC_0_IRQHandler:
  b .

  .thumb_func
  .weak DMAC_1_IRQHandler
DMAC_1_IRQHandler:
  b .

  .thumb_func
  .weak DMAC_2_IRQHandler
DMAC_2_IRQHandler:
  b .

  .thumb_func
  .weak DMAC_3_IRQHandler
DMAC_3_IRQHandler:
  b .

  .thumb_func
  .weak DMAC_OTHER_IRQHandler
DMAC_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak EVSYS_0_IRQHandler
EVSYS_0_IRQHandler:
  b .

  .thumb_func
  .weak EVSYS_1_IRQHandler
EVSYS_1_IRQHandler:
  b .

  .thumb_func
  .weak EVSYS_2_IRQHandler
EVSYS_2_IRQHandler:
  b .

  .thumb_func
  .weak EVSYS_3_IRQHandler
EVSYS_3_IRQHandler:
  b .

  .thumb_func
  .weak EVSYS_OTHER_IRQHandler
EVSYS_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak PAC_IRQHandler
PAC_IRQHandler:
  b .

  .thumb_func
  .weak RAMECC_IRQHandler
RAMECC_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM0_0_IRQHandler
SERCOM0_0_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM0_1_IRQHandler
SERCOM0_1_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM0_2_IRQHandler
SERCOM0_2_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM0_OTHER_IRQHandler
SERCOM0_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM1_0_IRQHandler
SERCOM1_0_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM1_1_IRQHandler
SERCOM1_1_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM1_2_IRQHandler
SERCOM1_2_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM1_OTHER_IRQHandler
SERCOM1_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM2_0_IRQHandler
SERCOM2_0_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM2_1_IRQHandler
SERCOM2_1_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM2_2_IRQHandler
SERCOM2_2_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM2_OTHER_IRQHandler
SERCOM2_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM3_0_IRQHandler
SERCOM3_0_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM3_1_IRQHandler
SERCOM3_1_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM3_2_IRQHandler
SERCOM3_2_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM3_OTHER_IRQHandler
SERCOM3_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM4_0_IRQHandler
SERCOM4_0_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM4_1_IRQHandler
SERCOM4_1_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM4_2_IRQHandler
SERCOM4_2_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM4_OTHER_IRQHandler
SERCOM4_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM5_0_IRQHandler
SERCOM5_0_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM5_1_IRQHandler
SERCOM5_1_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM5_2_IRQHandler
SERCOM5_2_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM5_OTHER_IRQHandler
SERCOM5_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM6_0_IRQHandler
SERCOM6_0_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM6_1_IRQHandler
SERCOM6_1_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM6_2_IRQHandler
SERCOM6_2_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM6_OTHER_IRQHandler
SERCOM6_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM7_0_IRQHandler
SERCOM7_0_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM7_1_IRQHandler
SERCOM7_1_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM7_2_IRQHandler
SERCOM7_2_IRQHandler:
  b .

  .thumb_func
  .weak SERCOM7_OTHER_IRQHandler
SERCOM7_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak CAN0_IRQHandler
CAN0_IRQHandler:
  b .

  .thumb_func
  .weak CAN1_IRQHandler
CAN1_IRQHandler:
  b .

  .thumb_func
  .weak USB_OTHER_IRQHandler
USB_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak USB_SOF_HSOF_IRQHandler
USB_SOF_HSOF_IRQHandler:
  b .

  .thumb_func
  .weak USB_TRCPT0_IRQHandler
USB_TRCPT0_IRQHandler:
  b .

  .thumb_func
  .weak USB_TRCPT1_IRQHandler
USB_TRCPT1_IRQHandler:
  b .

  .thumb_func
  .weak GMAC_IRQHandler
GMAC_IRQHandler:
  b .

  .thumb_func
  .weak TCC0_OTHER_IRQHandler
TCC0_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak TCC0_MC0_IRQHandler
TCC0_MC0_IRQHandler:
  b .

  .thumb_func
  .weak TCC0_MC1_IRQHandler
TCC0_MC1_IRQHandler:
  b .

  .thumb_func
  .weak TCC0_MC2_IRQHandler
TCC0_MC2_IRQHandler:
  b .

  .thumb_func
  .weak TCC0_MC3_IRQHandler
TCC0_MC3_IRQHandler:
  b .

  .thumb_func
  .weak TCC0_MC4_IRQHandler
TCC0_MC4_IRQHandler:
  b .

  .thumb_func
  .weak TCC0_MC5_IRQHandler
TCC0_MC5_IRQHandler:
  b .

  .thumb_func
  .weak TCC1_OTHER_IRQHandler
TCC1_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak TCC1_MC0_IRQHandler
TCC1_MC0_IRQHandler:
  b .

  .thumb_func
  .weak TCC1_MC1_IRQHandler
TCC1_MC1_IRQHandler:
  b .

  .thumb_func
  .weak TCC1_MC2_IRQHandler
TCC1_MC2_IRQHandler:
  b .

  .thumb_func
  .weak TCC1_MC3_IRQHandler
TCC1_MC3_IRQHandler:
  b .

  .thumb_func
  .weak TCC2_OTHER_IRQHandler
TCC2_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak TCC2_MC0_IRQHandler
TCC2_MC0_IRQHandler:
  b .

  .thumb_func
  .weak TCC2_MC1_IRQHandler
TCC2_MC1_IRQHandler:
  b .

  .thumb_func
  .weak TCC2_MC2_IRQHandler
TCC2_MC2_IRQHandler:
  b .

  .thumb_func
  .weak TCC3_OTHER_IRQHandler
TCC3_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak TCC3_MC0_IRQHandler
TCC3_MC0_IRQHandler:
  b .

  .thumb_func
  .weak TCC3_MC1_IRQHandler
TCC3_MC1_IRQHandler:
  b .

  .thumb_func
  .weak TCC4_OTHER_IRQHandler
TCC4_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak TCC4_MC0_IRQHandler
TCC4_MC0_IRQHandler:
  b .

  .thumb_func
  .weak TCC4_MC1_IRQHandler
TCC4_MC1_IRQHandler:
  b .

  .thumb_func
  .weak TC0_IRQHandler
TC0_IRQHandler:
  b .

  .thumb_func
  .weak TC1_IRQHandler
TC1_IRQHandler:
  b .

  .thumb_func
  .weak TC2_IRQHandler
TC2_IRQHandler:
  b .

  .thumb_func
  .weak TC3_IRQHandler
TC3_IRQHandler:
  b .

  .thumb_func
  .weak TC4_IRQHandler
TC4_IRQHandler:
  b .

  .thumb_func
  .weak TC5_IRQHandler
TC5_IRQHandler:
  b .

  .thumb_func
  .weak TC6_IRQHandler
TC6_IRQHandler:
  b .

  .thumb_func
  .weak TC7_IRQHandler
TC7_IRQHandler:
  b .

  .thumb_func
  .weak PDEC_OTHER_IRQHandler
PDEC_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak PDEC_MC0_IRQHandler
PDEC_MC0_IRQHandler:
  b .

  .thumb_func
  .weak PDEC_MC1_IRQHandler
PDEC_MC1_IRQHandler:
  b .

  .thumb_func
  .weak ADC0_OTHER_IRQHandler
ADC0_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak ADC0_RESRDY_IRQHandler
ADC0_RESRDY_IRQHandler:
  b .

  .thumb_func
  .weak ADC1_OTHER_IRQHandler
ADC1_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak ADC1_RESRDY_IRQHandler
ADC1_RESRDY_IRQHandler:
  b .

  .thumb_func
  .weak AC_IRQHandler
AC_IRQHandler:
  b .

  .thumb_func
  .weak DAC_OTHER_IRQHandler
DAC_OTHER_IRQHandler:
  b .

  .thumb_func
  .weak DAC_EMPTY_0_IRQHandler
DAC_EMPTY_0_IRQHandler:
  b .

  .thumb_func
  .weak DAC_EMPTY_1_IRQHandler
DAC_EMPTY_1_IRQHandler:
  b .

  .thumb_func
  .weak DAC_RESRDY_0_IRQHandler
DAC_RESRDY_0_IRQHandler:
  b .

  .thumb_func
  .weak DAC_RESRDY_1_IRQHandler
DAC_RESRDY_1_IRQHandler:
  b .

  .thumb_func
  .weak I2S_IRQHandler
I2S_IRQHandler:
  b .

  .thumb_func
  .weak PCC_IRQHandler
PCC_IRQHandler:
  b .

  .thumb_func
  .weak AES_IRQHandler
AES_IRQHandler:
  b .

  .thumb_func
  .weak TRNG_IRQHandler
TRNG_IRQHandler:
  b .

  .thumb_func
  .weak ICM_IRQHandler
ICM_IRQHandler:
  b .

  .thumb_func
  .weak PUKCC_IRQHandler
PUKCC_IRQHandler:
  b .

  .thumb_func
  .weak QSPI_IRQHandler
QSPI_IRQHandler:
  b .

  .thumb_func
  .weak SDHC0_IRQHandler
SDHC0_IRQHandler:
  b .

  .thumb_func
  .weak SDHC1_IRQHandler
SDHC1_IRQHandler:
  b .

#endif

/*****************************************************************************
 * Vector Table                                                              *
 *****************************************************************************/

  .section .vectors, "ax"
  .align 2
  .global _vectors
  .extern __stack_end__
  .extern Reset_Handler

_vectors:
  .word __stack_end__
  .word Reset_Handler
  .word NMI_Handler
  .word HardFault_Handler
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word SVC_Handler
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word PendSV_Handler
  .word SysTick_Handler
  .word PM_IRQHandler
  .word MCLK_IRQHandler
  .word OSCCTRL_XOSC0_IRQHandler
  .word OSCCTRL_XOSC1_IRQHandler
  .word OSCCTRL_DFLL_IRQHandler
  .word OSCCTRL_DPLL0_IRQHandler
  .word OSCCTRL_DPLL1_IRQHandler
  .word OSC32KCTRL_IRQHandler
  .word SUPC_OTHER_IRQHandler
  .word SUPC_BODDET_IRQHandler
  .word WDT_IRQHandler
  .word RTC_IRQHandler
  .word EIC_EXTINT_0_IRQHandler
  .word EIC_EXTINT_1_IRQHandler
  .word EIC_EXTINT_2_IRQHandler
  .word EIC_EXTINT_3_IRQHandler
  .word EIC_EXTINT_4_IRQHandler
  .word EIC_EXTINT_5_IRQHandler
  .word EIC_EXTINT_6_IRQHandler
  .word EIC_EXTINT_7_IRQHandler
  .word EIC_EXTINT_8_IRQHandler
  .word EIC_EXTINT_9_IRQHandler
  .word EIC_EXTINT_10_IRQHandler
  .word EIC_EXTINT_11_IRQHandler
  .word EIC_EXTINT_12_IRQHandler
  .word EIC_EXTINT_13_IRQHandler
  .word EIC_EXTINT_14_IRQHandler
  .word EIC_EXTINT_15_IRQHandler
  .word FREQM_IRQHandler
  .word NVMCTRL_0_IRQHandler
  .word NVMCTRL_1_IRQHandler
  .word DMAC_0_IRQHandler
  .word DMAC_1_IRQHandler
  .word DMAC_2_IRQHandler
  .word DMAC_3_IRQHandler
  .word DMAC_OTHER_IRQHandler
  .word EVSYS_0_IRQHandler
  .word EVSYS_1_IRQHandler
  .word EVSYS_2_IRQHandler
  .word EVSYS_3_IRQHandler
  .word EVSYS_OTHER_IRQHandler
  .word PAC_IRQHandler
  .word Dummy_Handler /* Reserved */
  .word Dummy_Handler /* Reserved */
  .word Dummy_Handler /* Reserved */
  .word RAMECC_IRQHandler
  .word SERCOM0_0_IRQHandler
  .word SERCOM0_1_IRQHandler
  .word SERCOM0_2_IRQHandler
  .word SERCOM0_OTHER_IRQHandler
  .word SERCOM1_0_IRQHandler
  .word SERCOM1_1_IRQHandler
  .word SERCOM1_2_IRQHandler
  .word SERCOM1_OTHER_IRQHandler
  .word SERCOM2_0_IRQHandler
  .word SERCOM2_1_IRQHandler
  .word SERCOM2_2_IRQHandler
  .word SERCOM2_OTHER_IRQHandler
  .word SERCOM3_0_IRQHandler
  .word SERCOM3_1_IRQHandler
  .word SERCOM3_2_IRQHandler
  .word SERCOM3_OTHER_IRQHandler
  .word SERCOM4_0_IRQHandler
  .word SERCOM4_1_IRQHandler
  .word SERCOM4_2_IRQHandler
  .word SERCOM4_OTHER_IRQHandler
  .word SERCOM5_0_IRQHandler
  .word SERCOM5_1_IRQHandler
  .word SERCOM5_2_IRQHandler
  .word SERCOM5_OTHER_IRQHandler
  .word SERCOM6_0_IRQHandler
  .word SERCOM6_1_IRQHandler
  .word SERCOM6_2_IRQHandler
  .word SERCOM6_OTHER_IRQHandler
  .word SERCOM7_0_IRQHandler
  .word SERCOM7_1_IRQHandler
  .word SERCOM7_2_IRQHandler
  .word SERCOM7_OTHER_IRQHandler
  .word CAN0_IRQHandler
  .word CAN1_IRQHandler
  .word USB_OTHER_IRQHandler
  .word USB_SOF_HSOF_IRQHandler
  .word USB_TRCPT0_IRQHandler
  .word USB_TRCPT1_IRQHandler
  .word GMAC_IRQHandler
  .word TCC0_OTHER_IRQHandler
  .word TCC0_MC0_IRQHandler
  .word TCC0_MC1_IRQHandler
  .word TCC0_MC2_IRQHandler
  .word TCC0_MC3_IRQHandler
  .word TCC0_MC4_IRQHandler
  .word TCC0_MC5_IRQHandler
  .word TCC1_OTHER_IRQHandler
  .word TCC1_MC0_IRQHandler
  .word TCC1_MC1_IRQHandler
  .word TCC1_MC2_IRQHandler
  .word TCC1_MC3_IRQHandler
  .word TCC2_OTHER_IRQHandler
  .word TCC2_MC0_IRQHandler
  .word TCC2_MC1_IRQHandler
  .word TCC2_MC2_IRQHandler
  .word TCC3_OTHER_IRQHandler
  .word TCC3_MC0_IRQHandler
  .word TCC3_MC1_IRQHandler
  .word TCC4_OTHER_IRQHandler
  .word TCC4_MC0_IRQHandler
  .word TCC4_MC1_IRQHandler
  .word TC0_IRQHandler
  .word TC1_IRQHandler
  .word TC2_IRQHandler
  .word TC3_IRQHandler
  .word TC4_IRQHandler
  .word TC5_IRQHandler
  .word TC6_IRQHandler
  .word TC7_IRQHandler
  .word PDEC_OTHER_IRQHandler
  .word PDEC_MC0_IRQHandler
  .word PDEC_MC1_IRQHandler
  .word ADC0_OTHER_IRQHandler
  .word ADC0_RESRDY_IRQHandler
  .word ADC1_OTHER_IRQHandler
  .word ADC1_RESRDY_IRQHandler
  .word AC_IRQHandler
  .word DAC_OTHER_IRQHandler
  .word DAC_EMPTY_0_IRQHandler
  .word DAC_EMPTY_1_IRQHandler
  .word DAC_RESRDY_0_IRQHandler
  .word DAC_RESRDY_1_IRQHandler
  .word I2S_IRQHandler
  .word PCC_IRQHandler
  .word AES_IRQHandler
  .word TRNG_IRQHandler
  .word ICM_IRQHandler
  .word PUKCC_IRQHandler
  .word QSPI_IRQHandler
  .word SDHC0_IRQHandler
  .word SDHC1_IRQHandler
_vectors_end:

#ifdef VECTORS_IN_RAM
  .section .vectors_ram, "ax"
  .align 2
  .global _vectors_ram

_vectors_ram:
  .space _vectors_end - _vectors, 0
#endif

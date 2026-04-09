/*
 * flash.c
 *
 *  Created on: Apr 9, 2026
 *      Author: ggpai
 */

/*
 * Contains function definitions for configuring the MCU's internal flash memory */
#include "flash.h"

void flash_config_wait_states(uint8_t hclk){
  FLASH->ACR &= ~(FLASH_ACR_LATENCY | FLASH_ACR_PRFTEN | FLASH_ACR_ICEN| FLASH_ACR_DCEN| FLASH_ACR_ICRST|FLASH_ACR_DCRST);

  FLASH->ACR |= (FLASH_ACR_PRFTEN| FLASH_ACR_ICEN| FLASH_ACR_DCEN);

  // calculater the latency based on the hclk value

  uint32_t latency = (hclk -1)/30; // rounds up to the nearest multiple integer of 30

  //set the flash_ACR_latency based on the latency calculated
  FLASH->ACR |=(latency << FLASH_ACR_LATENCY_Pos);



}

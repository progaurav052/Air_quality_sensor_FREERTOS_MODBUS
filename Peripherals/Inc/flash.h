/*
 * flash.h
 *
 *  Created on: Apr 9, 2026
 *      Author: ggpai
 *
 *      Provides function prototypes for configuring the internal flash memory of MCU.
 */

#ifndef INC_FLASH_H_
#define INC_FLASH_H_

#include "mcu.h"

/*
 * configures the number of wait states for accessing the internal flash memory based on the CPU clock frequency (HCLK).
 * @param Hclk -> the cpu clock frequency in Mhz
 * */
void flash_config_wait_states(uint8_t hclk);

#endif /* INC_FLASH_H_ */

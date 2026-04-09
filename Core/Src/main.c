/*
 * Application entry point */

#include "mcu.h"
#include "FreeRTOSConfig.h"
#include "FreeRTOSTasks.h"

//startup task prototype

static void startup(void);


int main(void)
{
  //update the system core clock variable by calling update function
  SystemCoreClockUpdate();
  /*So even though the chip starts at 16 MHz, SystemCoreClockUpdate() is used to make sure the software knows the final clock speed after configuration.
   * At reset, the STM32 starts at 16 MHz. But later, your code may change the clock to a different speed using PLL or other settings. So this function updates the SystemCoreClock variable to the correct value.*/

  //Create the startup task
  startup();

  //start the scheduler
  vTaskStartScheduler();

    /* Loop forever */
	while(1);

}

/*
 * Stratup task used for the required FreeRTOS initializations on startup */
static void startup_task(void *param)
{
  vTaskDelete(NULL);
  //used for self deletion


}

/*
 * Creates startup task*/
static void startup(void)
{
  configASSERT(pdPASS == xTaskCreate(startup_task,"startup_task", STARTUP_TASK_STACK_SIZE , NULL,  STARTUP_TASK_PRIORITY  , NULL));

}

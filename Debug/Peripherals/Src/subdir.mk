################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Peripherals/Src/flash.c 

OBJS += \
./Peripherals/Src/flash.o 

C_DEPS += \
./Peripherals/Src/flash.d 


# Each subdirectory must supply rules for building sources it contributes
Peripherals/Src/%.o Peripherals/Src/%.su Peripherals/Src/%.cyclo: ../Peripherals/Src/%.c Peripherals/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F446xx -c -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/Core/Inc" -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/Peripherals/Inc" -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/Middleware/ThirdParty/FreeRTOS/Source/include" -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/CMSIS" -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/Config" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Peripherals-2f-Src

clean-Peripherals-2f-Src:
	-$(RM) ./Peripherals/Src/flash.cyclo ./Peripherals/Src/flash.d ./Peripherals/Src/flash.o ./Peripherals/Src/flash.su

.PHONY: clean-Peripherals-2f-Src


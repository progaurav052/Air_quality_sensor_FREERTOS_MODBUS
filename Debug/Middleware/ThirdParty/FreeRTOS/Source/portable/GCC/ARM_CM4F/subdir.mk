################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/%.o Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/%.su Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/%.cyclo: ../Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/%.c Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F446xx -c -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/Core/Inc" -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/Middleware/ThirdParty/FreeRTOS/Source/include" -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/CMSIS" -I"/Users/ggpai/Desktop/stm32_FreeRTOS_Project/workspace/Air_Quality_RTOS/Config" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middleware-2f-ThirdParty-2f-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM4F

clean-Middleware-2f-ThirdParty-2f-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.cyclo ./Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.d ./Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.o ./Middleware/ThirdParty/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-Middleware-2f-ThirdParty-2f-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM4F


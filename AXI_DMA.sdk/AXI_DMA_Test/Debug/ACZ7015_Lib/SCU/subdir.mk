################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ACZ7015_Lib/SCU/SCU_GIC.c \
../ACZ7015_Lib/SCU/SCU_TIMER.c 

OBJS += \
./ACZ7015_Lib/SCU/SCU_GIC.o \
./ACZ7015_Lib/SCU/SCU_TIMER.o 

C_DEPS += \
./ACZ7015_Lib/SCU/SCU_GIC.d \
./ACZ7015_Lib/SCU/SCU_TIMER.d 


# Each subdirectory must supply rules for building sources it contributes
ACZ7015_Lib/SCU/%.o: ../ACZ7015_Lib/SCU/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I../../AXI_DMA_Test_bsp/ps7_cortexa9_0/include -I"C:\Users\Administrator\Desktop\workspace\ch17_ACZ7015_AXI_DMA\AXI_DMA.sdk\AXI_DMA_Test\ACZ7015_Lib\AXI_DMA" -I"C:\Users\Administrator\Desktop\workspace\ch17_ACZ7015_AXI_DMA\AXI_DMA.sdk\AXI_DMA_Test\ACZ7015_Lib\SCU" -I"C:\Users\Administrator\Desktop\workspace\ch17_ACZ7015_AXI_DMA\AXI_DMA.sdk\AXI_DMA_Test\src" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



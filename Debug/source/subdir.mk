################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/adc_driver.c \
../source/dma_driver.c \
../source/gpio.c \
../source/led.c \
../source/main.c \
../source/mtb.c \
../source/semihost_hardfault.c \
../source/uart_driver.c 

OBJS += \
./source/adc_driver.o \
./source/dma_driver.o \
./source/gpio.o \
./source/led.o \
./source/main.o \
./source/mtb.o \
./source/semihost_hardfault.o \
./source/uart_driver.o 

C_DEPS += \
./source/adc_driver.d \
./source/dma_driver.d \
./source/gpio.d \
./source/led.d \
./source/main.d \
./source/mtb.d \
./source/semihost_hardfault.d \
./source/uart_driver.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I../board -I../source -I../ -I../drivers -I../CMSIS -I../utilities -I../CMSIS_driver -I../startup -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



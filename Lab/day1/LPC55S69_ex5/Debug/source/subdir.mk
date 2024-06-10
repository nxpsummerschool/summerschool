################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/LPC55S69_ex4.c \
../source/semihost_hardfault.c 

C_DEPS += \
./source/LPC55S69_ex4.d \
./source/semihost_hardfault.d 

OBJS += \
./source/LPC55S69_ex4.o \
./source/semihost_hardfault.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC55S69JBD100 -DCPU_LPC55S69JBD100_cm33 -DCPU_LPC55S69JBD100_cm33_core0 -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\board" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\source" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\utilities" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\drivers" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\uart" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\serial_manager" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\device" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\CMSIS" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\lists" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\startup" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\button" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\timer_manager" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\gpio" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\timer" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/LPC55S69_ex4.d ./source/LPC55S69_ex4.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o

.PHONY: clean-source


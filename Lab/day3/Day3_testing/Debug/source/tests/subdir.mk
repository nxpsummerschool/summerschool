################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/tests/test_check_prime.c \
../source/tests/test_memcopy.c 

C_DEPS += \
./source/tests/test_check_prime.d \
./source/tests/test_memcopy.d 

OBJS += \
./source/tests/test_check_prime.o \
./source/tests/test_memcopy.o 


# Each subdirectory must supply rules for building sources it contributes
source/tests/%.o: ../source/tests/%.c source/tests/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC55S69JBD100 -DCPU_LPC55S69JBD100_cm33 -DCPU_LPC55S69JBD100_cm33_core0 -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\board" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\source" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\utilities" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\drivers" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\component\uart" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\component\serial_manager" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\device" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\CMSIS" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\component\lists" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\Day3_testing\startup" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source-2f-tests

clean-source-2f-tests:
	-$(RM) ./source/tests/test_check_prime.d ./source/tests/test_check_prime.o ./source/tests/test_memcopy.d ./source/tests/test_memcopy.o

.PHONY: clean-source-2f-tests


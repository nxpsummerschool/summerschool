################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/button/fsl_component_button.c 

C_DEPS += \
./component/button/fsl_component_button.d 

OBJS += \
./component/button/fsl_component_button.o 


# Each subdirectory must supply rules for building sources it contributes
component/button/%.o: ../component/button/%.c component/button/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC55S69JBD100 -DCPU_LPC55S69JBD100_cm33 -DCPU_LPC55S69JBD100_cm33_core0 -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\board" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\source" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\utilities" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\drivers" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\uart" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\serial_manager" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\device" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\CMSIS" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\lists" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\startup" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\button" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\timer_manager" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\gpio" -I"C:\Users\crist\Documents\MCUXpressoIDE_11.9.1_2170\workspace\LPC55S69_ex4\component\timer" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-button

clean-component-2f-button:
	-$(RM) ./component/button/fsl_component_button.d ./component/button/fsl_component_button.o

.PHONY: clean-component-2f-button


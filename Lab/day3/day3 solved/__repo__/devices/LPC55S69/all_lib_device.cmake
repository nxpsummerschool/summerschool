# Copy variable into project config.cmake to use software component
#set.board.lpcxpresso55s69
#  # description: Board_project_template lpcxpresso55s69
#  set(CONFIG_USE_board_project_template true)

#set.CMSIS_DSP_Lib
#  # description: CMSIS-DSP Library Header
#  set(CONFIG_USE_CMSIS_DSP_Include true)

#  # description: CMSIS-DSP Library
#  set(CONFIG_USE_CMSIS_DSP_Source true)

#set.CMSIS
#  # description: Device interrupt controller interface
#  set(CONFIG_USE_CMSIS_Device_API_OSTick true)

#  # description: CMSIS-RTOS API for Cortex-M, SC000, and SC300
#  set(CONFIG_USE_CMSIS_Device_API_RTOS2 true)

#  # description: Access to #include Driver_CAN.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_CAN true)

#  # description: Access to #include Driver_ETH.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_Ethernet true)

#  # description: Access to #include Driver_ETH_MAC.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_Ethernet_MAC true)

#  # description: Access to #include Driver_ETH_PHY.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_Ethernet_PHY true)

#  # description: Access to #include Driver_Flash.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_Flash true)

#  # description: Access to #include Driver_GPIO.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_GPIO true)

#  # description: Access to #include Driver_I2C.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_I2C true)

#  # description: Access to #include Driver_MCI.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_MCI true)

#  # description: Access to #include Driver_NAND.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_NAND true)

#  # description: Access to #include Driver_SAI.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_SAI true)

#  # description: Access to #include Driver_SPI.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_SPI true)

#  # description: Access to #include Driver_USART.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_USART true)

#  # description: Access to #include Driver_USBD.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_USB_Device true)

#  # description: Access to #include Driver_USBH.h file for custom implementation
#  set(CONFIG_USE_CMSIS_Driver_Include_USB_Host true)

#  # description: Access to #include Driver_WiFi.h file
#  set(CONFIG_USE_CMSIS_Driver_Include_WiFi true)

#  # description: CMSIS-NN Library
#  set(CONFIG_USE_CMSIS_NN_Source true)

#  # description: CMSIS-CORE for Cortex-M, ARMv8-M, ARMv8.1-M
#  set(CONFIG_USE_CMSIS_Include_core_cm true)

#  # description: CMSIS-RTOS2 RTX5 for Cortex-M, SC000, C300 and Armv8-M (Library)
#  set(CONFIG_USE_CMSIS_RTOS2_RTX true)

#  # description: CMSIS-RTOS2 RTX5 for Cortex-M, SC000, C300 and Armv8-M (Library)
#  set(CONFIG_USE_CMSIS_RTOS2_RTX_LIB true)

#set.device.LPC55S69
#  # description: USB FRO Calibration Driver
#  set(CONFIG_USE_driver_fro_calib true)

#  # description: Inputmux_connections Driver
#  set(CONFIG_USE_driver_inputmux_connections true)

#  # description: Power driver
#  set(CONFIG_USE_driver_power true)

#  # description: Reset Driver
#  set(CONFIG_USE_driver_reset true)

#  # description: Utility notifier
#  set(CONFIG_USE_utility_notifier true)

#  # description: Utilities which is needed for particular toolchain like the SBRK function required to address limitation between HEAP and STACK in GCC toolchain library.
#  set(CONFIG_USE_utilities_misc_utilities true)

#  # description: Used to include slave core binary into master core binary.
#  set(CONFIG_USE_utility_incbin true)

#  # description: common Driver
#  set(CONFIG_USE_driver_common true)

#  # description: Driver ektf2k
#  set(CONFIG_USE_driver_ektf2k true)

#  # description: Touch panel controller FT3267 driver
#  set(CONFIG_USE_driver_ft3267 true)

#  # description: Driver ft5406
#  set(CONFIG_USE_driver_ft5406 true)

#  # description: Driver gt911
#  set(CONFIG_USE_driver_gt911 true)

#  # description: Driver tma525b
#  set(CONFIG_USE_driver_tma525b true)

#  # description: Component serial_manager_swo
#  set(CONFIG_USE_component_serial_manager_swo true)

#  # description: Component serial_manager_virtual
#  set(CONFIG_USE_component_serial_manager_virtual true)

#  # description: RTT template configuration
#  set(CONFIG_USE_driver_rtt_template true)

#  # description: Component software_rng_adapter
#  set(CONFIG_USE_component_software_rng_adapter true)

#  # description: Component reset_adapter
#  set(CONFIG_USE_component_reset_adapter true)

#  # description: Component panic
#  set(CONFIG_USE_component_panic true)

#  # description: Driver mx25r_flash
#  set(CONFIG_USE_driver_mx25r_flash true)

#  # description: Component software_crc_adapter
#  set(CONFIG_USE_component_software_crc_adapter true)

#  # description: Component ak4497 adapter for single codec
#  set(CONFIG_USE_component_ak4497_adapter true)

#  # description: Component codec adapters for multi codec
#  set(CONFIG_USE_component_codec_adapters true)

#  # description: Component cs42448 adapter for single codec
#  set(CONFIG_USE_component_cs42448_adapter true)

#  # description: Component cs42888 adapter for single codec
#  set(CONFIG_USE_component_cs42888_adapter true)

#  # description: Component da7212 adapter for single codec
#  set(CONFIG_USE_component_da7212_adapter true)

#  # description: Component pcm186x adapter for single codec
#  set(CONFIG_USE_component_pcm186x_adapter true)

#  # description: Component pcm512x adapter for single codec
#  set(CONFIG_USE_component_pcm512x_adapter true)

#  # description: Component sgtl5000 adapter for single codec
#  set(CONFIG_USE_component_sgtl_adapter true)

#  # description: Component tfa9896 adapter for single codec
#  set(CONFIG_USE_component_tfa9896_adapter true)

#  # description: Component tfa9xxx adapter for single codec
#  set(CONFIG_USE_component_tfa9xxx_adapter true)

#  # description: Component wm8524 adapter for single codec
#  set(CONFIG_USE_component_wm8524_adapter true)

#  # description: Component wm8904 adapter for single codec
#  set(CONFIG_USE_component_wm8904_adapter true)

#  # description: Component wm8960 adapter for single codecs
#  set(CONFIG_USE_component_wm8960_adapter true)

#  # description: Component wm8962 adapter for single codecs
#  set(CONFIG_USE_component_wm8962_adapter true)

#  # description: Driver codec
#  set(CONFIG_USE_driver_codec true)

#  # description: Devices_project_template LPC55S69
#  set(CONFIG_USE_device_project_template true)

#  # description: Device LPC55S69_system
#  set(CONFIG_USE_device_system true)

#  # description: Device LPC55S69_cmsis
#  set(CONFIG_USE_device_CMSIS true)

#  # description: Device LPC55S69_startup
#  set(CONFIG_USE_device_startup true)

#  # description: Rte_device
#  set(CONFIG_USE_device_RTE true)

#  # description: Clock Driver
#  set(CONFIG_USE_driver_clock true)

#  # description: Utility str
#  set(CONFIG_USE_utility_str true)

#  # description: Utility debug_console_lite
#  set(CONFIG_USE_utility_debug_console_lite true)

#  # description: Utility debug_console
#  set(CONFIG_USE_utility_debug_console true)

#  # description: Utility debug_console Template Config
#  set(CONFIG_USE_utility_debug_console_template_config true)

#  # description: Utility assert
#  set(CONFIG_USE_utility_assert true)

#  # description: Utility assert_lite
#  set(CONFIG_USE_utility_assert_lite true)

#  # description: FLEXCOMM USART FreeRTOS Driver
#  set(CONFIG_USE_driver_flexcomm_usart_freertos true)

#  # description: FLEXCOMM SPI FreeRTOS Driver
#  set(CONFIG_USE_driver_flexcomm_spi_freertos true)

#  # description: FLEXCOMM I2C FreeRTOS Driver
#  set(CONFIG_USE_driver_flexcomm_i2c_freertos true)

#  # description: WWDT Driver
#  set(CONFIG_USE_driver_wwdt true)

#  # description: UTICK Driver
#  set(CONFIG_USE_driver_utick true)

#  # description: SYSCTL Driver
#  set(CONFIG_USE_driver_sysctl true)

#  # description: sdif Driver
#  set(CONFIG_USE_driver_sdif true)

#  # description: SCT Driver
#  set(CONFIG_USE_driver_sctimer true)

#  # description: RNG Driver
#  set(CONFIG_USE_driver_rng_1 true)

#  # description: PUF Driver
#  set(CONFIG_USE_driver_puf true)

#  # description: PRINCE Driver
#  set(CONFIG_USE_driver_prince true)

#  # description: POWERQUAD Driver
#  set(CONFIG_USE_driver_powerquad true)

#  # description: CMSIS DSP functions based on POWERQUAD
#  set(CONFIG_USE_driver_powerquad_cmsis true)

#  # description: PLU Driver
#  set(CONFIG_USE_driver_plu true)

#  # description: PINT Driver
#  set(CONFIG_USE_driver_pint true)

#  # description: OSTimer Driver
#  set(CONFIG_USE_driver_ostimer true)

#  # description: MRT Driver
#  set(CONFIG_USE_driver_mrt true)

#  # description: MAILBOX Driver
#  set(CONFIG_USE_driver_mailbox true)

#  # description: RTC Driver
#  set(CONFIG_USE_driver_lpc_rtc true)

#  # description: IOCON Driver
#  set(CONFIG_USE_driver_lpc_iocon true)

#  # description: GPIO Driver
#  set(CONFIG_USE_driver_lpc_gpio true)

#  # description: DMA Driver
#  set(CONFIG_USE_driver_lpc_dma true)

#  # description: CRC Driver
#  set(CONFIG_USE_driver_lpc_crc true)

#  # description: LPADC Driver
#  set(CONFIG_USE_driver_lpadc true)

#  # description: INPUTMUX Driver
#  set(CONFIG_USE_driver_inputmux true)

#  # description: FLASHIAP Driver
#  set(CONFIG_USE_driver_iap1 true)

#  # description: Hashcrypt Driver
#  set(CONFIG_USE_driver_hashcrypt true)

#  # description: GINT Driver
#  set(CONFIG_USE_driver_gint true)

#  # description: usart Driver
#  set(CONFIG_USE_driver_flexcomm_usart true)

#  # description: usart Driver
#  set(CONFIG_USE_driver_flexcomm_usart_dma true)

#  # description: SPI Driver
#  set(CONFIG_USE_driver_flexcomm_spi true)

#  # description: SPI Driver
#  set(CONFIG_USE_driver_flexcomm_spi_dma true)

#  # description: i2s Driver
#  set(CONFIG_USE_driver_flexcomm_i2s true)

#  # description: i2s Driver
#  set(CONFIG_USE_driver_flexcomm_i2s_dma true)

#  # description: I2C Driver
#  set(CONFIG_USE_driver_flexcomm_i2c true)

#  # description: I2C Driver
#  set(CONFIG_USE_driver_flexcomm_i2c_dma true)

#  # description: FLEXCOMM Driver
#  set(CONFIG_USE_driver_flexcomm true)

#  # description: SPI CMSIS Driver
#  set(CONFIG_USE_driver_cmsis_flexcomm_spi true)

#  # description: I2C CMSIS Driver
#  set(CONFIG_USE_driver_cmsis_flexcomm_i2c true)

#  # description: USART CMSIS Driver
#  set(CONFIG_USE_driver_cmsis_flexcomm_usart true)

#  # description: CTimer Driver
#  set(CONFIG_USE_driver_ctimer true)

#  # description: cmp_1 Driver
#  set(CONFIG_USE_driver_cmp_1 true)

#  # description: CASPER Driver
#  set(CONFIG_USE_driver_casper true)

#  # description: anactrl Driver
#  set(CONFIG_USE_driver_anactrl true)

#  # description: Driver camera-common
#  set(CONFIG_USE_driver_camera-common true)

#  # description: Driver camera-device-ap1302
#  set(CONFIG_USE_driver_camera-device-ap1302 true)

#  # description: Driver camera-device-common
#  set(CONFIG_USE_driver_camera-device-common true)

#  # description: Driver camera-device-max9286
#  set(CONFIG_USE_driver_camera-device-max9286 true)

#  # description: Driver camera-device-mt9m114
#  set(CONFIG_USE_driver_camera-device-mt9m114 true)

#  # description: Driver camera-device-ov5640
#  set(CONFIG_USE_driver_camera-device-ov5640 true)

#  # description: Driver camera-device-ov7670
#  set(CONFIG_USE_driver_camera-device-ov7670 true)

#  # description: Driver camera-device-ov7725
#  set(CONFIG_USE_driver_camera-device-ov7725 true)

#  # description: Driver camera-device-sccb
#  set(CONFIG_USE_driver_camera-device-sccb true)

#  # description: Driver camera-receiver-common
#  set(CONFIG_USE_driver_camera-receiver-common true)

#  # description: Driver dbi
#  set(CONFIG_USE_driver_dbi true)

#  # description: Driver dbi_lpc_spi_dma
#  set(CONFIG_USE_driver_dbi_lpc_spi_dma true)

#  # description: Driver dc-fb-common
#  set(CONFIG_USE_driver_dc-fb-common true)

#  # description: Driver dc-fb-dbi
#  set(CONFIG_USE_driver_dc-fb-dbi true)

#  # description: Driver dc-fb-ssd1963
#  set(CONFIG_USE_driver_dc-fb-ssd1963 true)

#  # description: Driver display-adv7535
#  set(CONFIG_USE_driver_display-adv7535 true)

#  # description: Driver display-sn65dsi83
#  set(CONFIG_USE_driver_display-sn65dsi83 true)

#  # description: Driver display-common
#  set(CONFIG_USE_driver_display-common true)

#  # description: Driver display-it6161
#  set(CONFIG_USE_driver_display-it6161 true)

#  # description: Driver display-it6263
#  set(CONFIG_USE_driver_display-it6263 true)

#  # description: Driver fbdev
#  set(CONFIG_USE_driver_fbdev true)

#  # description: Driver video-common
#  set(CONFIG_USE_driver_video-common true)

#  # description: Driver video-i2c
#  set(CONFIG_USE_driver_video-i2c true)

#  # description: Component usart_adapter
#  set(CONFIG_USE_component_usart_adapter true)

#  # description: Driver ft6x06
#  set(CONFIG_USE_driver_ft6x06 true)

#  # description: Component timer_manager
#  set(CONFIG_USE_component_timer_manager true)

#  # description: Component ctimer_adapter
#  set(CONFIG_USE_component_ctimer_adapter true)

#  # description: Component mrt_adapter
#  set(CONFIG_USE_component_mrt_adapter true)

#  # description: Component ostimer_adapter
#  set(CONFIG_USE_component_ostimer_adapter true)

#  # description: Component flexcomm_spi_adapter
#  set(CONFIG_USE_component_flexcomm_spi_adapter true)

#  # description: Utility shell
#  set(CONFIG_USE_utility_shell true)

#  # description: Component serial_manager
#  set(CONFIG_USE_component_serial_manager true)

#  # description: Component serial_manager_spi
#  set(CONFIG_USE_component_serial_manager_spi true)

#  # description: Component serial_manager_uart
#  set(CONFIG_USE_component_serial_manager_uart true)

#  # description: Component serial_manager_usb_cdc
#  set(CONFIG_USE_component_serial_manager_usb_cdc true)

#  # description: Driver fxas21002cq
#  set(CONFIG_USE_driver_fxas21002cq true)

#  # description: Driver fxls8974cf
#  set(CONFIG_USE_driver_fxls8974cf true)

#  # description: Driver fxos8700cq
#  set(CONFIG_USE_driver_fxos8700cq true)

#  # description: Driver htu21d
#  set(CONFIG_USE_driver_htu21d true)

#  # description: Driver icm42688p
#  set(CONFIG_USE_driver_icm42688p true)

#  # description: Driver lsm6dso
#  set(CONFIG_USE_driver_lsm6dso true)

#  # description: Driver max30101
#  set(CONFIG_USE_driver_max30101 true)

#  # description: Driver mma8451q
#  set(CONFIG_USE_driver_mma8451q true)

#  # description: Driver mma8652fc
#  set(CONFIG_USE_driver_mma8652fc true)

#  # description: Driver p3t1755
#  set(CONFIG_USE_driver_p3t1755 true)

#  # description: Driver tsl2561
#  set(CONFIG_USE_driver_tsl2561 true)

#  # description: SEGGER Real Time Transfer(RTT)
#  set(CONFIG_USE_driver_rtt true)

#  # description: Component lpcrtc
#  set(CONFIG_USE_component_lpcrtc true)

#  # description: Component pwm_ctimer_adapter
#  set(CONFIG_USE_component_pwm_ctimer_adapter true)

#  # description: Driver pca9420
#  set(CONFIG_USE_driver_pca9420 true)

#  # description: Driver pca9422
#  set(CONFIG_USE_driver_pca9422 true)

#  # description: Driver pf1550
#  set(CONFIG_USE_driver_pf1550 true)

#  # description: Driver pf3000
#  set(CONFIG_USE_driver_pf3000 true)

#  # description: Driver pf5020
#  set(CONFIG_USE_driver_pf5020 true)

#  # description: Component mem_manager
#  set(CONFIG_USE_component_mem_manager true)

#  # description: Component mem_manager_legacy
#  set(CONFIG_USE_component_mem_manager_legacy true)

#  # description: Component mem_manager_freertos
#  set(CONFIG_USE_component_mem_manager_freertos true)

#  # description: Component mem_manager_light
#  set(CONFIG_USE_component_mem_manager_light true)

#  # description: Component log
#  set(CONFIG_USE_component_log true)

#  # description: Component log backend debug console
#  set(CONFIG_USE_component_log_backend_debug_console true)

#  # description: Component log backend debug console lite
#  set(CONFIG_USE_component_log_backend_debug_console_lite true)

#  # description: Component log backend ring buffer
#  set(CONFIG_USE_component_log_backend_ringbuffer true)

#  # description: Component lists
#  set(CONFIG_USE_component_lists true)

#  # description: Component led
#  set(CONFIG_USE_component_led true)

#  # description: Component flexcomm_i2c_adapter
#  set(CONFIG_USE_component_flexcomm_i2c_adapter true)

#  # description: Component i2c_adapter_interface
#  set(CONFIG_USE_component_i2c_adapter_interface true)

#  # description: Component i2c_mux_pca954x
#  set(CONFIG_USE_component_i2c_mux_pca954x true)

#  # description: Component enable_pca9544
#  set(CONFIG_USE_component_enable_pca9544 true)

#  # description: Component enable_pca9548
#  set(CONFIG_USE_component_enable_pca9548 true)

#  # description: Component at_least_one_i2c_mux_device_enabled
#  set(CONFIG_USE_component_at_least_one_i2c_mux_device_enabled true)

#  # description: Component gint_adapter
#  set(CONFIG_USE_component_gint_adapter true)

#  # description: Component lpc_gpio_adapter
#  set(CONFIG_USE_component_lpc_gpio_adapter true)

#  # description: Component rt_gpio_adapter
#  set(CONFIG_USE_component_rt_gpio_adapter true)

#  # description: mflash onchip
#  set(CONFIG_USE_component_mflash_onchip true)

#  # description: Driver ili9341
#  set(CONFIG_USE_driver_ili9341 true)

#  # description: Driver psp27801
#  set(CONFIG_USE_driver_psp27801 true)

#  # description: Driver ssd1963
#  set(CONFIG_USE_driver_ssd1963 true)

#  # description: Driver st7796s
#  set(CONFIG_USE_driver_st7796s true)

#  # description: Component lpc_crc_adapter
#  set(CONFIG_USE_component_lpc_crc_adapter true)

#  # description: Component codec_i2c
#  set(CONFIG_USE_component_codec_i2c true)

#  # description: Driver ak4497
#  set(CONFIG_USE_driver_ak4497 true)

#  # description: Driver cs42448
#  set(CONFIG_USE_driver_cs42448 true)

#  # description: Driver cs42888
#  set(CONFIG_USE_driver_cs42888 true)

#  # description: Driver dialog7212
#  set(CONFIG_USE_driver_dialog7212 true)

#  # description: Driver pcm186x
#  set(CONFIG_USE_driver_pcm186x true)

#  # description: Driver pcm512x
#  set(CONFIG_USE_driver_pcm512x true)

#  # description: Driver sgtl5000
#  set(CONFIG_USE_driver_sgtl5000 true)

#  # description: Driver tfa9896
#  set(CONFIG_USE_driver_tfa9896 true)

#  # description: Driver tfa9xxx
#  set(CONFIG_USE_driver_tfa9xxx true)

#  # description: Driver tfa9xxx_hal
#  set(CONFIG_USE_driver_tfa9xxx_hal true)

#  # description: Driver wm8524
#  set(CONFIG_USE_driver_wm8524 true)

#  # description: Driver wm8904
#  set(CONFIG_USE_driver_wm8904 true)

#  # description: Driver wm8960
#  set(CONFIG_USE_driver_wm8960 true)

#  # description: Driver wm8962
#  set(CONFIG_USE_driver_wm8962 true)

#  # description: Component button
#  set(CONFIG_USE_component_button true)

#  # description: Component flexcomm_i2s_dma_adapter
#  set(CONFIG_USE_component_audio_flexcomm_i2s_dma_adapter true)

#set.middleware.tinycbor
#  # description: Concise Binary Object Representation (CBOR) Library
#  set(CONFIG_USE_middleware_tinycbor true)

#set.middleware.tfm
#  # description: TFM Library
#  set(CONFIG_USE_middleware_tfm_s_board true)

#  # description: TFM CMSIS driver for LPUART based on USART
#  set(CONFIG_USE_middleware_tfm_lpuart true)

#  # description: CQBOR library
#  set(CONFIG_USE_middleware_tfm_qcbor true)

#  # description: CQBOR library tests
#  set(CONFIG_USE_middleware_tfm_qcbor_test true)

#  # description: TFM Secure Storage Service
#  set(CONFIG_USE_middleware_tfm_s_ps true)

#  # description: TFM Library
#  set(CONFIG_USE_middleware_tfm_ns_board true)

#  # description: TFM Test PS Secure
#  set(CONFIG_USE_middleware_tfm_s_test_ps true)

#  # description: TFM Test ITS Secure
#  set(CONFIG_USE_middleware_tfm_s_test_its true)

#  # description: TFM Test Attestation Secure
#  set(CONFIG_USE_middleware_tfm_s_test_attestation true)

#  # description: TFM t_cose sign1 verify
#  set(CONFIG_USE_middleware_tfm_t_cose_sign1_verify true)

#  # description: TFM t_cose mac0 verify
#  set(CONFIG_USE_middleware_tfm_t_cose_mac0_verify true)

#  # description: TFM Test Crypto Secure
#  set(CONFIG_USE_middleware_tfm_s_test_crypto true)

#  # description: TFM Platform test
#  set(CONFIG_USE_middleware_tfm_platform_test true)

#  # description: TFM Test Platform Secure
#  set(CONFIG_USE_middleware_tfm_s_test_platform true)

#  # description: TFM Test IPC Secure
#  set(CONFIG_USE_middleware_tfm_s_test_ipc true)

#  # description: TFM Test PS Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_ps true)

#  # description: TFM Test ITS Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_its true)

#  # description: TFM Test Secure Framework
#  set(CONFIG_USE_middleware_tfm_ns_test_s true)

#  # description: TFM Tests Attestation Non Secure
#  set(CONFIG_USE_middleware_tfmtests_ns_test_attestation true)

#  # description: TFM Test Crypto Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_crypto true)

#  # description: TFM Test QCBOR Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_qcbor true)

#  # description: TFM Test IPC Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_ipc true)

#  # description: TFM Test Platform Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_platform true)

#  # description: TFM Tests T_COSE Non Secure
#  set(CONFIG_USE_middleware_tfmtests_ns_test_tcose true)

#  # description: TFM Library
#  set(CONFIG_USE_middleware_tfm_s_platform_common true)

#  # description: TFM CMSIS Flash IAP1 driver
#  set(CONFIG_USE_middleware_tfm_flash_iap1 true)

#  # description: TFM CMSIS USART driver
#  set(CONFIG_USE_middleware_tfm_usart true)

#  # description: TFM Platform Service
#  set(CONFIG_USE_middleware_tfm_s_platform true)

#  # description: TFM Platform Service for RW61x
#  set(CONFIG_USE_middleware_tfm_s_platform_sp_common true)

#  # description: TFM Initial Attestation Service asymmetric
#  set(CONFIG_USE_middleware_tfm_s_initial_attestation_asymmetric true)

#  # description: TFM Initial Attestation Service asymmetric
#  set(CONFIG_USE_middleware_tfm_s_initial_attestation_symmetric true)

#  # description: TFM Initial Attestation Service
#  set(CONFIG_USE_middleware_tfm_s_initial_attestation true)

#  # description: TFM Internal Trusted Storage Service
#  set(CONFIG_USE_middleware_tfm_s_its true)

#  # description: TFM Internal Trusted Storage Service Load Info
#  set(CONFIG_USE_middleware_tfm_s_its_load_info_common true)

#  # description: TFM Non Secure
#  set(CONFIG_USE_middleware_tfm_ns true)

#  # description: TFM NS Large Profile
#  set(CONFIG_USE_middleware_tfm_profile_large_ns_configs true)

#  # description: TFM NS Medium Profile
#  set(CONFIG_USE_middleware_tfm_profile_medium_ns_configs true)

#  # description: TFM NS Small Profile
#  set(CONFIG_USE_middleware_tfm_profile_small_ns_configs true)

#  # description: TFM NS mbedTLS compatibility header
#  set(CONFIG_USE_middleware_tfm_ns_mbedtls_compatibility true)

#  # description: TFM NS OS wrapper for bare metal
#  set(CONFIG_USE_middleware_tfm_ns_os_wrapper_baremetal true)

#  # description: TFM NS OS wrapper for RTOS
#  set(CONFIG_USE_middleware_tfm_ns_os_wrapper_rtos true)

#  # description: TFM Tests Non Secure
#  set(CONFIG_USE_middleware_tfmtests_ns true)

#  # description: TFM Test Secure Framework
#  set(CONFIG_USE_middleware_tfm_s_test true)

#  # description: TFM Framework profile large
#  set(CONFIG_USE_middleware_tfm_profile_large true)

#  # description: TFM Framework profile medium
#  set(CONFIG_USE_middleware_tfm_profile_medium true)

#  # description: TFM Framework profile small
#  set(CONFIG_USE_middleware_tfm_profile_small true)

#  # description: TFM Test Secure Framework profile large
#  set(CONFIG_USE_middleware_tfm_profile_large_s_test_configs true)

#  # description: TFM Test Secure Framework profile medium
#  set(CONFIG_USE_middleware_tfm_profile_medium_s_test_configs true)

#  # description: TFM Test Secure Framework profile small
#  set(CONFIG_USE_middleware_tfm_profile_small_s_test_configs true)

#  # description: TFM Test Attestation Secure Asymmetric
#  set(CONFIG_USE_middleware_tfm_s_test_attestation_asymmetric true)

#  # description: TFM Test Attestation Secure Symmetric
#  set(CONFIG_USE_middleware_tfm_s_test_attestation_symmetric true)

#  # description: TFM Test IRQ Service
#  set(CONFIG_USE_middleware_tfm_s_test_irq_slih true)

#  # description: TFM Test IRQ Service
#  set(CONFIG_USE_middleware_tfm_s_test_irq_flih true)

#  # description: TFM Test Non Secure Framework
#  set(CONFIG_USE_middleware_tfm_ns_test true)

#  # description: TFM Test Non Secure Framework profile large
#  set(CONFIG_USE_middleware_tfm_profile_large_ns_test_configs true)

#  # description: TFM Test Non Secure Framework profile medium
#  set(CONFIG_USE_middleware_tfm_profile_medium_ns_test_configs true)

#  # description: TFM Test Non Secure Framework profile small
#  set(CONFIG_USE_middleware_tfm_profile_small_ns_test_configs true)

#  # description: TFM Test Attestation Non Secure asymmetric
#  set(CONFIG_USE_middleware_tfm_ns_test_attestation_asymmetric true)

#  # description: TFM Test Attestation Non Secure asymmetric
#  set(CONFIG_USE_middleware_tfm_ns_test_attestation_symmetric true)

#  # description: TFM Test Attestation Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_attestation true)

#  # description: TFM Tests Attestation Non Secure asymmetric
#  set(CONFIG_USE_middleware_tfmtests_ns_test_attestation_asymmetric true)

#  # description: TFM Tests Attestation Non Secure Symmetric
#  set(CONFIG_USE_middleware_tfmtests_ns_test_attestation_symmetric true)

#  # description: TFM Test IRQ SLIH Mode Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_irq_slih true)

#  # description: TFM Test IRQ FLIH Mode Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_irq_flih true)

#  # description: TFM Test T_COSE Non Secure
#  set(CONFIG_USE_middleware_tfm_ns_test_tcose true)

#set.middleware.mbedcrypto
#  # description: mbedTLS port library common files for MCUX
#  set(CONFIG_USE_middleware_mbedcrypto_port_config true)

#  # description: mbedTLS port library for entropy for all RNG and TRNG based devices
#  set(CONFIG_USE_middleware_mbedcrypto_port_rng true)

#  # description: Mbed Crypto library
#  set(CONFIG_USE_middleware_mbedcrypto true)

#  # description: Mbed Crypto library HW port
#  set(CONFIG_USE_middleware_mbedcrypto_port true)

#set.middleware.psatest
#  # description: PSA Test Suite Crypto Non Secure
#  set(CONFIG_USE_middleware_psatest_ns_crypto true)

#  # description: PSA Test Suite Initial Attestation Non Secure part 1
#  set(CONFIG_USE_middleware_psatest_ns_t_cose true)

#  # description: PSA Test Suite Protected Storage Non Secure
#  set(CONFIG_USE_middleware_psatest_ns_protected_storage true)

#  # description: PSA Test Suite Internal Trusted Storage Non Secure
#  set(CONFIG_USE_middleware_psatest_ns_internal_trusted_storage true)

#  # description: PSA Test Suite Non Secure
#  set(CONFIG_USE_middleware_psatest_ns true)

#  # description: PSA Test Suite Non Secure target dev_apis
#  set(CONFIG_USE_middleware_psatest_ns_tgt_dev_apis_nxp true)

#  # description: PSA Test Suite Non Secure Large Profile
#  set(CONFIG_USE_middleware_tfm_profile_large_ns_psatest_configs true)

#  # description: PSA Test Suite Non Secure Medium Profile
#  set(CONFIG_USE_middleware_tfm_profile_medium_ns_psatest_configs true)

#  # description: PSA Test Suite Non Secure Small Profile
#  set(CONFIG_USE_middleware_tfm_profile_small_ns_psatest_configs true)

#  # description: PSA Test Suite Initial Attestation Non Secure part 1
#  set(CONFIG_USE_middleware_psatest_ns_initial_attestation true)

#set.middleware.sdmmc
#  # description: Middleware sdmmc common
#  set(CONFIG_USE_middleware_sdmmc_common true)

#  # description: Template configuration file to be edited by user.
#  set(CONFIG_USE_middleware_sdmmc_sdhc_template true)

#  # description: Template configuration file to be edited by user.
#  set(CONFIG_USE_middleware_sdmmc_sdif_template true)

#  # description: Template configuration file to be edited by user.
#  set(CONFIG_USE_middleware_sdmmc_usdhc_template true)

#  # description: Middleware sdmmc osa
#  set(CONFIG_USE_middleware_sdmmc_osa true)

#  # description: Middleware sdmmc sd
#  set(CONFIG_USE_middleware_sdmmc_sd true)

#  # description: Middleware sdmmc mmc
#  set(CONFIG_USE_middleware_sdmmc_mmc true)

#  # description: Middleware sdmmc sdio
#  set(CONFIG_USE_middleware_sdmmc_sdio true)

#  # description: Middleware sdmmc sdspi
#  set(CONFIG_USE_middleware_sdmmc_sdspi true)

#  # description: Middleware sdmmc host sdif
#  set(CONFIG_USE_middleware_sdmmc_host_sdif true)

#  # description: Middleware sdmmc host sdif non_blocking
#  set(CONFIG_USE_middleware_sdmmc_host_sdif_non_blocking true)

#  # description: Middleware sdmmc host sdif blocking
#  set(CONFIG_USE_middleware_sdmmc_host_sdif_blocking true)

#set.middleware.pkcs11
#  # description: Public Key Cryptography Standard #11 defines generic cryptographic token interface.
#  set(CONFIG_USE_middleware_pkcs11 true)

#set.middleware.multicore
#  # description: RPMSG-Lite
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_doc true)

#  # description: MCMgr
#  set(CONFIG_USE_middleware_multicore_mcmgr true)

#  # description: MCMgr
#  set(CONFIG_USE_middleware_multicore_mcmgr_doc true)

#  # description: eRPC
#  set(CONFIG_USE_middleware_multicore_erpc_doc true)

#  # description: multicore
#  set(CONFIG_USE_middleware_multicore_multicore_doc true)

#  # description: RPMsg-Lite BM environment sources
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_bm true)

#  # description: RPMsg-Lite FreeRTOS environment sources
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_freertos true)

#  # description: RPMsg-Lite XOS environment layer sources
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_xos true)

#  # description: RPMsg-Lite QNX environment layer sources
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_qnx true)

#  # description: RPMsg-Lite ThreadX environment layer sources
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_threadx true)

#  # description: RPMsg-Lite Zephyr environment sources
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_zephyr true)

#  # description: RPMsg-Lite
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite true)

#  # description: RPMsg-Lite NS
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_ns true)

#  # description: RPMsg-Lite Queue
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_queue true)

#  # description: RPMsg-Lite for lpcxpresso55s69 application
#  set(CONFIG_USE_middleware_multicore_rpmsg-lite_lpc55s69 true)

#  # description: Multicore Manager for fpga_niobe4 board
#  set(CONFIG_USE_middleware_multicore_mcmgr_lpc55s69 true)

#  # description: eRPC
#  set(CONFIG_USE_middleware_multicore_erpc true)

#  # description: eRPC_client
#  set(CONFIG_USE_middleware_multicore_erpc_client true)

#  # description: eRPC_server
#  set(CONFIG_USE_middleware_multicore_erpc_server true)

#  # description: eRPC_arbitrator
#  set(CONFIG_USE_middleware_multicore_erpc_arbitrator true)

#  # description: eRPC_port_stdlib
#  set(CONFIG_USE_middleware_multicore_erpc_port_stdlib true)

#  # description: eRPC_port_freertos
#  set(CONFIG_USE_middleware_multicore_erpc_port_freertos true)

#  # description: eRPC_mu_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_mu_transport true)

#  # description: eRPC_rpmsg_lite_transport_master
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_transport_master true)

#  # description: eRPC_rpmsg_lite_transport_remote
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_transport_remote true)

#  # description: eRPC_rpmsg_lite_rtos_transport_master
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_transport_master true)

#  # description: eRPC_rpmsg_lite_rtos_transport_remote
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_transport_remote true)

#  # description: eRPC_rpmsg_tty_rtos_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_transport true)

#  # description: eRPC_uart_cmsis_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_uart_cmsis_transport true)

#  # description: eRPC_dspi_master_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_master_transport true)

#  # description: eRPC_dspi_slave_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_dspi_slave_transport true)

#  # description: eRPC_spi_master_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_spi_master_transport true)

#  # description: eRPC_spi_slave_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_spi_slave_transport true)

#  # description: eRPC_lpspi_slave_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_lpspi_slave_transport true)

#  # description: eRPC_i2c_slave_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_i2c_slave_transport true)

#  # description: eRPC_lpi2c_slave_transport
#  set(CONFIG_USE_middleware_multicore_erpc_eRPC_lpi2c_slave_transport true)

#  # description: eRPC
#  set(CONFIG_USE_middleware_multicore_erpc_examples_erpc_common_multicore true)

#  # description: erpc_examples Matrix Multiply Client
#  set(CONFIG_USE_middleware_multicore_erpc_examples_erpc_matrix_multiply_client true)

#  # description: erpc_examples Matrix Multiply Server
#  set(CONFIG_USE_middleware_multicore_erpc_examples_erpc_matrix_multiply_server true)

#  # description: erpc_examples Two Way RPC core0
#  set(CONFIG_USE_middleware_multicore_erpc_examples_erpc_two_way_rpc_core0 true)

#  # description: erpc_examples Two Way RPC core1
#  set(CONFIG_USE_middleware_multicore_erpc_examples_erpc_two_way_rpc_core1 true)

#set.middleware.mcuboot
#  # description: MCUboot application support layer
#  set(CONFIG_USE_middleware_mcuboot_nxp_app_support true)

#  # description: mcuboot
#  set(CONFIG_USE_middleware_mcuboot_bootutil true)

#  # description: NXP porting layer for MCUboot's bootutil code
#  set(CONFIG_USE_middleware_mcuboot_nxp_bootutil_port true)

#  # description: MCUboot default stack/heap setup for MbedTLS
#  set(CONFIG_USE_middleware_mcuboot_stack_heap_default_mbedtls true)

#  # description: MCUboot default stack/heap setup for TinyCrypt
#  set(CONFIG_USE_middleware_mcuboot_stack_heap_default_tinycrypt true)

#  # description: MCUboot device flash porting layer
#  set(CONFIG_USE_middleware_mcuboot_bootutil_flashapi_rt true)

#  # description: MCUboot device flash porting layer
#  set(CONFIG_USE_middleware_mcuboot_bootutil_flashapi_mcx true)

#  # description: TinyCrypt fork in MCUBoot repository
#  set(CONFIG_USE_middleware_mcuboot_tinycrypt true)

#  # description: MCUBoot's subset of MbedTLS for ASN.1 parsing
#  set(CONFIG_USE_middleware_mcuboot_mbedtls-asn1 true)

#set.middleware.mbedtls
#  # description: mbedTLS test suite
#  set(CONFIG_USE_middleware_mbedtls_tests true)

#  # description: mbedTLS 3rdparty code
#  set(CONFIG_USE_middleware_mbedtls_3rdparty true)

#  # description: mbedTLS port library for KPSDK
#  set(CONFIG_USE_middleware_mbedtls_port_ksdk true)

#  # description: mbedTLS library
#  set(CONFIG_USE_middleware_mbedtls true)

#set.middleware.audio_voice.components
#  # description: Synchronous Sample Rate Converter
#  set(CONFIG_USE_middleware_audio_voice_components_ssrc true)

#  # description: Opus file
#  set(CONFIG_USE_middleware_audio_voice_components_opusfile true)

#  # description: Opus
#  set(CONFIG_USE_middleware_audio_voice_components_opus true)

#  # description: Ogg
#  set(CONFIG_USE_middleware_audio_voice_components_ogg true)

#  # description: WAV decoder
#  set(CONFIG_USE_middleware_audio_voice_components_decoders_wav true)

#  # description: MP3 decoder
#  set(CONFIG_USE_middleware_audio_voice_components_decoders_mp3 true)

#  # description: Flac decoder
#  set(CONFIG_USE_middleware_audio_voice_components_decoders_flac true)

#  # description: AAC decoder
#  set(CONFIG_USE_middleware_audio_voice_components_decoders_aac true)

#set.middleware.audio_voice.maestro
#  # description: MCU Maestro Audio Framework Core
#  set(CONFIG_USE_middleware_audio_voice_maestro true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_audio_proc_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_audio_sink_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_audio_src_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_file_utils_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_file_sink_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_file_src_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_mem_sink_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_mem_src_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_netbuf_src_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_process_sink_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_cci_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_cei_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_decoder_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_encoder_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_decoder_aac_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_decoder_flac_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_decoder_mp3_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_decoder_wav_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_decoder_opus_ogg_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_encoder_opus_enable true)

#  # description: MCU Maestro Audio Framework Element
#  set(CONFIG_USE_middleware_audio_voice_maestro_element_audio_proc_ssrc_enable true)

#set.middleware.lvgl
#  # description: lvgl template
#  set(CONFIG_USE_middleware_lvgl_template true)

#  # description: lvgl library
#  set(CONFIG_USE_middleware_lvgl true)

#  # description: LVGL benchmark demo
#  set(CONFIG_USE_middleware_lvgl_demo_benchmark true)

#  # description: LVGL demo common
#  set(CONFIG_USE_middleware_lvgl_demo_common true)

#  # description: LVGL demo transform
#  set(CONFIG_USE_middleware_lvgl_demo_transform true)

#  # description: LVGL demo multilang
#  set(CONFIG_USE_middleware_lvgl_demo_multilang true)

#  # description: LVGL demo flex_layout
#  set(CONFIG_USE_middleware_lvgl_demo_flex_layout true)

#  # description: LVGL demo scroll
#  set(CONFIG_USE_middleware_lvgl_demo_scroll true)

#  # description: LVGL demo music
#  set(CONFIG_USE_middleware_lvgl_demo_music true)

#  # description: LVGL demo keypad_encoder
#  set(CONFIG_USE_middleware_lvgl_demo_keypad_encoder true)

#  # description: LVGL stress demo
#  set(CONFIG_USE_middleware_lvgl_demo_stress true)

#  # description: LVGL widgets demo
#  set(CONFIG_USE_middleware_lvgl_demo_widgets true)

#set.middleware.fatfs
#  # description: FatFs
#  set(CONFIG_USE_middleware_fatfs true)

#  # description: FatFs template MMC
#  set(CONFIG_USE_middleware_fatfs_template_mmc true)

#  # description: FatFs template NAND
#  set(CONFIG_USE_middleware_fatfs_template_nand true)

#  # description: FatFs template RAM
#  set(CONFIG_USE_middleware_fatfs_template_ram true)

#  # description: FatFs template SD
#  set(CONFIG_USE_middleware_fatfs_template_sd true)

#  # description: FatFs template SDSPI
#  set(CONFIG_USE_middleware_fatfs_template_sdspi true)

#  # description: FatFs template USB
#  set(CONFIG_USE_middleware_fatfs_template_usb true)

#  # description: FatFs_MMC
#  set(CONFIG_USE_middleware_fatfs_mmc true)

#  # description: FatFs_RAM
#  set(CONFIG_USE_middleware_fatfs_ram true)

#  # description: FatFs_SD
#  set(CONFIG_USE_middleware_fatfs_sd true)

#  # description: FatFs_SDSPI
#  set(CONFIG_USE_middleware_fatfs_sdspi true)

#  # description: FatFs_USB
#  set(CONFIG_USE_middleware_fatfs_usb true)

#set.middleware.emwin
#  # description: emwin template
#  set(CONFIG_USE_middleware_emwin_template true)

#  # description: emWin library
#  set(CONFIG_USE_middleware_emwin true)

#set.component.osa
#  # description: Component osa template config
#  set(CONFIG_USE_component_osa_template_config true)

#  # description: Component osa
#  set(CONFIG_USE_component_osa true)

#  # description: Component osa_bm
#  set(CONFIG_USE_component_osa_bm true)

#  # description: Component osa_free_rtos
#  set(CONFIG_USE_component_osa_free_rtos true)

#  # description: Component common_task
#  set(CONFIG_USE_component_common_task true)

#set.middleware.freertos-kernel
#  # description: FreeRTOS kernel
#  set(CONFIG_USE_middleware_freertos-kernel true)

#  # description: FreeRTOS cm33 non trustzone port
#  set(CONFIG_USE_middleware_freertos-kernel_cm33_non_trustzone true)

#  # description: FreeRTOS cm33 secure port
#  set(CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_non_secure true)

#  # description: FreeRTOS Secure Context
#  set(CONFIG_USE_middleware_freertos-kernel_cm33_trustzone_secure true)

#  # description: OS wrapper for running FreeRTOS inside TF-M non secure world
#  set(CONFIG_USE_middleware_freertos-kernel_tfm_ns true)

#  # description: FreeRTOS NXP extension
#  set(CONFIG_USE_middleware_freertos-kernel_extension true)

#  # description: FreeRTOS heap 1
#  set(CONFIG_USE_middleware_freertos-kernel_heap_1 true)

#  # description: FreeRTOS heap 2
#  set(CONFIG_USE_middleware_freertos-kernel_heap_2 true)

#  # description: FreeRTOS heap 3
#  set(CONFIG_USE_middleware_freertos-kernel_heap_3 true)

#  # description: FreeRTOS heap 4
#  set(CONFIG_USE_middleware_freertos-kernel_heap_4 true)

#  # description: FreeRTOS heap 5
#  set(CONFIG_USE_middleware_freertos-kernel_heap_5 true)

#  # description: old FreeRTOS MPU wrappers used before V10.6.0
#  set(CONFIG_USE_middleware_freertos-kernel_mpu_wrappers true)

#  # description: new V2 FreeRTOS MPU wrappers introduced in V10.6.0
#  set(CONFIG_USE_middleware_freertos-kernel_mpu_wrappers_v2 true)

#  # description: Template configuration file to be edited by user. Provides also memory allocator (heap_x), change variant if needed.
#  set(CONFIG_USE_middleware_freertos-kernel_config true)

#set.middleware.corehttp
#  # description: Client implementation of the HTTP/1.1 specification for embedded devices.
#  set(CONFIG_USE_middleware_freertos_corehttp true)

#set.middleware.usb_pd
#  # description: Middleware usb_pd
#  set(CONFIG_USE_middleware_usb_pd true)

#  # description: Middleware usb_pd altmode
#  set(CONFIG_USE_middleware_usb_pd_altmode true)

#  # description: Middleware usb_pd phy ptn5110
#  set(CONFIG_USE_middleware_usb_pd_phy_ptn5110 true)

#  # description: USB Type-C PD Stack
#  set(CONFIG_USE_middleware_usb_pd_config_header true)

#  # description: Middleware usb_pd compliance_test_report
#  set(CONFIG_USE_middleware_usb_pd_compliance_test_report true)

#set.middleware.usb
#  # description: Middleware usb common_header
#  set(CONFIG_USE_middleware_usb_common_header true)

#  # description: Middleware usb device common_header
#  set(CONFIG_USE_middleware_usb_device_common_header true)

#  # description: Middleware usb device ip3511fs
#  set(CONFIG_USE_middleware_usb_device_ip3511fs true)

#  # description: USB device ip3511fs config header
#  set(CONFIG_USE_middleware_usb_device_ip3511fs_config_header true)

#  # description: Middleware usb device ip3511hs
#  set(CONFIG_USE_middleware_usb_device_ip3511hs true)

#  # description: USB device ip3511hs config header
#  set(CONFIG_USE_middleware_usb_device_ip3511hs_config_header true)

#  # description: Middleware usb device controller driver
#  set(CONFIG_USE_middleware_usb_device_controller_driver true)

#  # description: Middleware usb device stack
#  set(CONFIG_USE_middleware_usb_device_stack true)

#  # description: Middleware usb device audio
#  set(CONFIG_USE_middleware_usb_device_audio true)

#  # description: Middleware usb device cdc
#  set(CONFIG_USE_middleware_usb_device_cdc true)

#  # description: Middleware usb device cdc ecm
#  set(CONFIG_USE_middleware_usb_device_cdc_ecm true)

#  # description: Middleware usb device cdc rndis
#  set(CONFIG_USE_middleware_usb_device_cdc_rndis true)

#  # description: Middleware usb device hid
#  set(CONFIG_USE_middleware_usb_device_hid true)

#  # description: Middleware usb device dfu
#  set(CONFIG_USE_middleware_usb_device_dfu true)

#  # description: Middleware usb device msd
#  set(CONFIG_USE_middleware_usb_device_msd true)

#  # description: Middleware usb device mtp
#  set(CONFIG_USE_middleware_usb_device_mtp true)

#  # description: Middleware usb device phdc
#  set(CONFIG_USE_middleware_usb_device_phdc true)

#  # description: Middleware usb device video
#  set(CONFIG_USE_middleware_usb_device_video true)

#  # description: Middleware usb device ccid
#  set(CONFIG_USE_middleware_usb_device_ccid true)

#  # description: Middleware usb device printer
#  set(CONFIG_USE_middleware_usb_device_printer true)

#  # description: Middleware usb phy
#  set(CONFIG_USE_middleware_usb_phy true)

#  # description: Middleware usb host common_header
#  set(CONFIG_USE_middleware_usb_host_common_header true)

#  # description: Middleware usb host ohci
#  set(CONFIG_USE_middleware_usb_host_ohci true)

#  # description: USB host ohci config header
#  set(CONFIG_USE_middleware_usb_host_ohci_config_header true)

#  # description: Middleware usb host ip3516hs
#  set(CONFIG_USE_middleware_usb_host_ip3516hs true)

#  # description: USB host ip3516hs config header
#  set(CONFIG_USE_middleware_usb_host_ip3516hs_config_header true)

#  # description: Middleware usb host stack
#  set(CONFIG_USE_middleware_usb_host_stack true)

#  # description: Middleware usb host audio
#  set(CONFIG_USE_middleware_usb_host_audio true)

#  # description: Middleware usb host cdc
#  set(CONFIG_USE_middleware_usb_host_cdc true)

#  # description: Middleware usb host cdc_ecm
#  set(CONFIG_USE_middleware_usb_host_cdc_ecm true)

#  # description: Middleware usb host cdc_rndis
#  set(CONFIG_USE_middleware_usb_host_cdc_rndis true)

#  # description: Middleware usb host hid
#  set(CONFIG_USE_middleware_usb_host_hid true)

#  # description: Middleware usb host msd
#  set(CONFIG_USE_middleware_usb_host_msd true)

#  # description: Middleware usb host video
#  set(CONFIG_USE_middleware_usb_host_video true)

#  # description: Middleware usb host phdc
#  set(CONFIG_USE_middleware_usb_host_phdc true)

#  # description: Middleware usb host printer
#  set(CONFIG_USE_middleware_usb_host_printer true)

#set.middleware.motor_control
#  # description: Real Time Control Embedded Software Library for CM33 without DSP and FPU core
#  set(CONFIG_USE_middleware_rtcesl_cm33nodsp true)

#  # description: Real Time Control Embedded Software Library for CM33F core
#  set(CONFIG_USE_middleware_rtcesl_cm33f true)

#  # description: Common PMSM control middleware code, floating point implementation.
#  set(CONFIG_USE_middleware_mc_pmsm_snsless_float true)

#  # description: PMSM control with encoder middleware, floating point implementation.
#  set(CONFIG_USE_middleware_mc_pmsm_enc_float true)

#  # description: Dual PMSM control with encoder middleware, floating point implementation.
#  set(CONFIG_USE_middleware_mc_pmsm_enc_dual_float true)

#  # description: BLDC control without encoder middleware, frac implementation.
#  set(CONFIG_USE_middleware_mc_bldc_frac true)

#  # description: FreeMASTER TSA table for BLDC control frac
#  set(CONFIG_USE_middleware_motor_control_bldc_frac_tsa true)

#  # description: PMSM parameters identification, floating point implementation.
#  set(CONFIG_USE_middleware_pmsm_mid_float true)

#  # description: Common PMSM control middleware code, fractional implementation.
#  set(CONFIG_USE_middleware_mc_pmsm_snsless_frac true)

#  # description: Common PMSM control middleware code, fractional implementation.
#  set(CONFIG_USE_middleware_mc_pmsm_enc_frac true)

#  # description: PMSM parameters identification, fixed point implementation.
#  set(CONFIG_USE_middleware_pmsm_mid_frac true)

#  # description: PMSM parameters identification, fixed point implementation with ENC.
#  set(CONFIG_USE_middleware_pmsm_mid_frac_enc true)

#  # description: PMSM sensor/sensorless template sources floating-point implementation
#  set(CONFIG_USE_middleware_motor_control_pmsm_float_template true)

#  # description: BLDC sensor/sensorless template sources fraction implementation
#  set(CONFIG_USE_middleware_motor_control_bldc_frac_template true)

#  # description: PMSM sensorless control configuration files
#  set(CONFIG_USE_middleware_motor_control_pmsm_frac_template true)

#  # description: FreeMASTER TSA table for PMSM control floating-point
#  set(CONFIG_USE_middleware_motor_control_pmsm_float_tsa true)

#  # description: FreeMASTER TSA table for PMSM control fixed-point
#  set(CONFIG_USE_middleware_motor_control_pmsm_frac_tsa true)

#  # description: FreeMASTER TSA table for PMSM control fixed-point
#  set(CONFIG_USE_middleware_motor_control_pmsm_frac_enc_tsa true)

#  # description: PMSM sensorless control for adclpc and sctimer based MCUs
#  set(CONFIG_USE_middleware_motor_control_mc_drivers_lpcadc_sctimer true)

#  # description: MCAT2.0 pmsm files
#  set(CONFIG_USE_middleware_motor_control_pmsm_float_imcat true)

#  # description: Motor Control Advanced Algorithm for CM33F core
#  set(CONFIG_USE_middleware_motor_control_mcaa_cm33f true)

#  # description: Motor Control Advanced Algorithm for CM33 core
#  set(CONFIG_USE_middleware_motor_control_mcaa_cm33nodsp true)

#set.middleware.audio_voice.components.vit
#  # description: Voice intelligent technology library for Cortex M7
#  set(CONFIG_USE_middleware_audio_voice_components_vit_cm33-lpc55s69 true)

#set.middleware.llhttp
#  # description: HTTP parser in LLVM IR
#  set(CONFIG_USE_middleware_llhttp true)

#set.middleware.fmstr
#  # description: Common FreeMASTER driver code.
#  set(CONFIG_USE_middleware_fmstr true)

#  # description: FreeMASTER driver code for 32bit platforms, enabling communication between FreeMASTER or FreeMASTER Lite tools and MCU application. Supports Serial, CAN, USB and BDM/JTAG physical interface.
#  set(CONFIG_USE_middleware_fmstr_platform_gen32le true)

#  # description: FreeMASTER driver code for DSC platforms, enabling communication between FreeMASTER or FreeMASTER Lite tools and MCU application. Supports Serial, CAN, USB and BDM/JTAG physical interface.
#  set(CONFIG_USE_middleware_fmstr_platform_56f800e true)

#  # description: FreeMASTER driver code for S32 platform.
#  set(CONFIG_USE_middleware_fmstr_platform_s32 true)

#  # description: FreeMASTER driver code for Power Architecture 32bit platform.
#  set(CONFIG_USE_middleware_fmstr_platform_pa32 true)

#  # description: FreeMASTER driver code for S12Z platform.
#  set(CONFIG_USE_middleware_fmstr_platform_s12z true)

list(APPEND CMAKE_MODULE_PATH
  ${CMAKE_CURRENT_LIST_DIR}/.
  ${CMAKE_CURRENT_LIST_DIR}/../../CMSIS/Core/Include
  ${CMAKE_CURRENT_LIST_DIR}/../../CMSIS/DSP
  ${CMAKE_CURRENT_LIST_DIR}/../../CMSIS/Driver
  ${CMAKE_CURRENT_LIST_DIR}/../../CMSIS/NN
  ${CMAKE_CURRENT_LIST_DIR}/../../CMSIS/RTOS2
  ${CMAKE_CURRENT_LIST_DIR}/../../CMSIS/RTOS2/Include
  ${CMAKE_CURRENT_LIST_DIR}/../../boards/lpcxpresso55s69/project_template
  ${CMAKE_CURRENT_LIST_DIR}/../../components/audio
  ${CMAKE_CURRENT_LIST_DIR}/../../components/button
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/ak4497
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/cs42448
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/cs42888
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/da7212
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/i2c
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/pcm186x
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/pcm512x
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/sgtl5000
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/tfa9896
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/tfa9xxx
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/wm8524
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/wm8904
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/wm8960
  ${CMAKE_CURRENT_LIST_DIR}/../../components/codec/wm8962
  ${CMAKE_CURRENT_LIST_DIR}/../../components/common_task
  ${CMAKE_CURRENT_LIST_DIR}/../../components/crc
  ${CMAKE_CURRENT_LIST_DIR}/../../components/display/ili9341
  ${CMAKE_CURRENT_LIST_DIR}/../../components/display/psp27801
  ${CMAKE_CURRENT_LIST_DIR}/../../components/display/ssd1963
  ${CMAKE_CURRENT_LIST_DIR}/../../components/display/st7796s
  ${CMAKE_CURRENT_LIST_DIR}/../../components/flash/mflash
  ${CMAKE_CURRENT_LIST_DIR}/../../components/gpio
  ${CMAKE_CURRENT_LIST_DIR}/../../components/i2c
  ${CMAKE_CURRENT_LIST_DIR}/../../components/i2c/muxes
  ${CMAKE_CURRENT_LIST_DIR}/../../components/led
  ${CMAKE_CURRENT_LIST_DIR}/../../components/lists
  ${CMAKE_CURRENT_LIST_DIR}/../../components/log
  ${CMAKE_CURRENT_LIST_DIR}/../../components/mem_manager
  ${CMAKE_CURRENT_LIST_DIR}/../../components/mx25r_flash
  ${CMAKE_CURRENT_LIST_DIR}/../../components/osa
  ${CMAKE_CURRENT_LIST_DIR}/../../components/panic
  ${CMAKE_CURRENT_LIST_DIR}/../../components/pmic/pca9420
  ${CMAKE_CURRENT_LIST_DIR}/../../components/pmic/pca9422
  ${CMAKE_CURRENT_LIST_DIR}/../../components/pmic/pf1550
  ${CMAKE_CURRENT_LIST_DIR}/../../components/pmic/pf3000
  ${CMAKE_CURRENT_LIST_DIR}/../../components/pmic/pf5020
  ${CMAKE_CURRENT_LIST_DIR}/../../components/pwm
  ${CMAKE_CURRENT_LIST_DIR}/../../components/reset
  ${CMAKE_CURRENT_LIST_DIR}/../../components/rng
  ${CMAKE_CURRENT_LIST_DIR}/../../components/rtc
  ${CMAKE_CURRENT_LIST_DIR}/../../components/rtt
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/fxas21002cq
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/fxls8974cf
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/fxos8700cq
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/htu21d
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/icm42688p
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/lsm6dso
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/max30101
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/mma8451q
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/mma8652fc
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/p3t1755
  ${CMAKE_CURRENT_LIST_DIR}/../../components/sensor/tsl2561
  ${CMAKE_CURRENT_LIST_DIR}/../../components/serial_manager
  ${CMAKE_CURRENT_LIST_DIR}/../../components/spi
  ${CMAKE_CURRENT_LIST_DIR}/../../components/timer
  ${CMAKE_CURRENT_LIST_DIR}/../../components/timer_manager
  ${CMAKE_CURRENT_LIST_DIR}/../../components/touch/ektf2k
  ${CMAKE_CURRENT_LIST_DIR}/../../components/touch/ft3267
  ${CMAKE_CURRENT_LIST_DIR}/../../components/touch/ft5406
  ${CMAKE_CURRENT_LIST_DIR}/../../components/touch/ft6x06
  ${CMAKE_CURRENT_LIST_DIR}/../../components/touch/gt911
  ${CMAKE_CURRENT_LIST_DIR}/../../components/touch/tma525b
  ${CMAKE_CURRENT_LIST_DIR}/../../components/uart
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera/device
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera/device/ap1302
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera/device/max9286
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera/device/mt9m114
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera/device/ov5640
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera/device/ov7670
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera/device/ov7725
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera/device/sccb
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/camera/receiver
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/adv7535
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/dbi
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/dbi/lpc_spi
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/dc
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/dc/dbi
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/dc/ssd1963
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/fbdev
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/it6161
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/it6263
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/display/sn65dsi83
  ${CMAKE_CURRENT_LIST_DIR}/../../components/video/i2c
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/components/decoders/aac
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/components/decoders/flac
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/components/decoders/mp3
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/components/decoders/wav
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/components/ogg
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/components/opus
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/components/opusfile
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/components/ssrc
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/components/vit
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/audio_voice/maestro
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/emwin
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/fatfs
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/freemaster
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/llhttp
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos/benchmark
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos/flex_layout
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos/keypad_encoder
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos/multilang
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos/music
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos/scroll
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos/stress
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos/transform
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/lvgl/demos/widgets
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/mbedtls
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/mcuboot_opensource/boot/bootutil
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/mcuboot_opensource/boot/nxp_mcux_sdk
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/mcuboot_opensource/boot/nxp_mcux_sdk/flashapi
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/mcuboot_opensource/ext/mbedtls-asn1
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/mcuboot_opensource/ext/tinycrypt/lib
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/motor_control
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/multicore
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/pkcs11
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/rtcesl
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/sdmmc
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/tfm/mbed-crypto
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/tfm/psa-arch-tests/api-tests
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/tfm/qcbor
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/tfm/tf-m
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/tfm/tf-m-tests
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/tinycbor
  ${CMAKE_CURRENT_LIST_DIR}/../../middleware/usb
  ${CMAKE_CURRENT_LIST_DIR}/../../rtos/freertos/corehttp
  ${CMAKE_CURRENT_LIST_DIR}/../../rtos/freertos/freertos-kernel
  ${CMAKE_CURRENT_LIST_DIR}/cmsis_drivers
  ${CMAKE_CURRENT_LIST_DIR}/drivers
  ${CMAKE_CURRENT_LIST_DIR}/project_template
  ${CMAKE_CURRENT_LIST_DIR}/template
  ${CMAKE_CURRENT_LIST_DIR}/utilities
  ${CMAKE_CURRENT_LIST_DIR}/utilities/debug_console_lite
  ${CMAKE_CURRENT_LIST_DIR}/utilities/incbin
  ${CMAKE_CURRENT_LIST_DIR}/utilities/shell
)

include_if_use(CMSIS_DSP_Include)
include_if_use(CMSIS_DSP_Source)
include_if_use(CMSIS_Device_API_OSTick)
include_if_use(CMSIS_Device_API_RTOS2)
include_if_use(CMSIS_Driver_Include_CAN)
include_if_use(CMSIS_Driver_Include_Ethernet)
include_if_use(CMSIS_Driver_Include_Ethernet_MAC)
include_if_use(CMSIS_Driver_Include_Ethernet_PHY)
include_if_use(CMSIS_Driver_Include_Flash)
include_if_use(CMSIS_Driver_Include_GPIO)
include_if_use(CMSIS_Driver_Include_I2C)
include_if_use(CMSIS_Driver_Include_MCI)
include_if_use(CMSIS_Driver_Include_NAND)
include_if_use(CMSIS_Driver_Include_SAI)
include_if_use(CMSIS_Driver_Include_SPI)
include_if_use(CMSIS_Driver_Include_USART)
include_if_use(CMSIS_Driver_Include_USB_Device)
include_if_use(CMSIS_Driver_Include_USB_Host)
include_if_use(CMSIS_Driver_Include_WiFi)
include_if_use(CMSIS_Include_core_cm)
include_if_use(CMSIS_NN_Source)
include_if_use(CMSIS_RTOS2_RTX)
include_if_use(CMSIS_RTOS2_RTX_LIB)
include_if_use(board_project_template)
include_if_use(component_ak4497_adapter.LPC55S69)
include_if_use(component_at_least_one_i2c_mux_device_enabled.LPC55S69)
include_if_use(component_audio_flexcomm_i2s_dma_adapter.LPC55S69)
include_if_use(component_button.LPC55S69)
include_if_use(component_codec_adapters.LPC55S69)
include_if_use(component_codec_i2c.LPC55S69)
include_if_use(component_common_task)
include_if_use(component_cs42448_adapter.LPC55S69)
include_if_use(component_cs42888_adapter.LPC55S69)
include_if_use(component_ctimer_adapter.LPC55S69)
include_if_use(component_da7212_adapter.LPC55S69)
include_if_use(component_enable_pca9544.LPC55S69)
include_if_use(component_enable_pca9548.LPC55S69)
include_if_use(component_flexcomm_i2c_adapter.LPC55S69)
include_if_use(component_flexcomm_spi_adapter.LPC55S69)
include_if_use(component_gint_adapter.LPC55S69)
include_if_use(component_i2c_adapter_interface.LPC55S69)
include_if_use(component_i2c_mux_pca954x.LPC55S69)
include_if_use(component_led.LPC55S69)
include_if_use(component_lists.LPC55S69)
include_if_use(component_log.LPC55S69)
include_if_use(component_log_backend_debug_console.LPC55S69)
include_if_use(component_log_backend_debug_console_lite.LPC55S69)
include_if_use(component_log_backend_ringbuffer.LPC55S69)
include_if_use(component_lpc_crc_adapter.LPC55S69)
include_if_use(component_lpc_gpio_adapter.LPC55S69)
include_if_use(component_lpcrtc.LPC55S69)
include_if_use(component_mem_manager.LPC55S69)
include_if_use(component_mem_manager_freertos.LPC55S69)
include_if_use(component_mem_manager_legacy.LPC55S69)
include_if_use(component_mem_manager_light.LPC55S69)
include_if_use(component_mflash_onchip.LPC55S69)
include_if_use(component_mrt_adapter.LPC55S69)
include_if_use(component_osa)
include_if_use(component_osa_bm)
include_if_use(component_osa_free_rtos)
include_if_use(component_osa_template_config)
include_if_use(component_ostimer_adapter.LPC55S69)
include_if_use(component_panic.LPC55S69)
include_if_use(component_pcm186x_adapter.LPC55S69)
include_if_use(component_pcm512x_adapter.LPC55S69)
include_if_use(component_pwm_ctimer_adapter.LPC55S69)
include_if_use(component_reset_adapter.LPC55S69)
include_if_use(component_rt_gpio_adapter.LPC55S69)
include_if_use(component_serial_manager.LPC55S69)
include_if_use(component_serial_manager_spi.LPC55S69)
include_if_use(component_serial_manager_swo.LPC55S69)
include_if_use(component_serial_manager_uart.LPC55S69)
include_if_use(component_serial_manager_usb_cdc.LPC55S69)
include_if_use(component_serial_manager_virtual.LPC55S69)
include_if_use(component_sgtl_adapter.LPC55S69)
include_if_use(component_software_crc_adapter.LPC55S69)
include_if_use(component_software_rng_adapter.LPC55S69)
include_if_use(component_tfa9896_adapter.LPC55S69)
include_if_use(component_tfa9xxx_adapter.LPC55S69)
include_if_use(component_timer_manager.LPC55S69)
include_if_use(component_usart_adapter.LPC55S69)
include_if_use(component_wm8524_adapter.LPC55S69)
include_if_use(component_wm8904_adapter.LPC55S69)
include_if_use(component_wm8960_adapter.LPC55S69)
include_if_use(component_wm8962_adapter.LPC55S69)
include_if_use(device_CMSIS.LPC55S69)
include_if_use(device_RTE.LPC55S69)
include_if_use(device_project_template.LPC55S69)
include_if_use(device_startup.LPC55S69)
include_if_use(device_system.LPC55S69)
include_if_use(driver_ak4497.LPC55S69)
include_if_use(driver_anactrl.LPC55S69)
include_if_use(driver_camera-common.LPC55S69)
include_if_use(driver_camera-device-ap1302.LPC55S69)
include_if_use(driver_camera-device-common.LPC55S69)
include_if_use(driver_camera-device-max9286.LPC55S69)
include_if_use(driver_camera-device-mt9m114.LPC55S69)
include_if_use(driver_camera-device-ov5640.LPC55S69)
include_if_use(driver_camera-device-ov7670.LPC55S69)
include_if_use(driver_camera-device-ov7725.LPC55S69)
include_if_use(driver_camera-device-sccb.LPC55S69)
include_if_use(driver_camera-receiver-common.LPC55S69)
include_if_use(driver_casper.LPC55S69)
include_if_use(driver_clock.LPC55S69)
include_if_use(driver_cmp_1.LPC55S69)
include_if_use(driver_cmsis_flexcomm_i2c.LPC55S69)
include_if_use(driver_cmsis_flexcomm_spi.LPC55S69)
include_if_use(driver_cmsis_flexcomm_usart.LPC55S69)
include_if_use(driver_codec.LPC55S69)
include_if_use(driver_common.LPC55S69)
include_if_use(driver_cs42448.LPC55S69)
include_if_use(driver_cs42888.LPC55S69)
include_if_use(driver_ctimer.LPC55S69)
include_if_use(driver_dbi.LPC55S69)
include_if_use(driver_dbi_lpc_spi_dma.LPC55S69)
include_if_use(driver_dc-fb-common.LPC55S69)
include_if_use(driver_dc-fb-dbi.LPC55S69)
include_if_use(driver_dc-fb-ssd1963.LPC55S69)
include_if_use(driver_dialog7212.LPC55S69)
include_if_use(driver_display-adv7535.LPC55S69)
include_if_use(driver_display-common.LPC55S69)
include_if_use(driver_display-it6161.LPC55S69)
include_if_use(driver_display-it6263.LPC55S69)
include_if_use(driver_display-sn65dsi83.LPC55S69)
include_if_use(driver_ektf2k.LPC55S69)
include_if_use(driver_fbdev.LPC55S69)
include_if_use(driver_flexcomm.LPC55S69)
include_if_use(driver_flexcomm_i2c.LPC55S69)
include_if_use(driver_flexcomm_i2c_dma.LPC55S69)
include_if_use(driver_flexcomm_i2c_freertos.LPC55S69)
include_if_use(driver_flexcomm_i2s.LPC55S69)
include_if_use(driver_flexcomm_i2s_dma.LPC55S69)
include_if_use(driver_flexcomm_spi.LPC55S69)
include_if_use(driver_flexcomm_spi_dma.LPC55S69)
include_if_use(driver_flexcomm_spi_freertos.LPC55S69)
include_if_use(driver_flexcomm_usart.LPC55S69)
include_if_use(driver_flexcomm_usart_dma.LPC55S69)
include_if_use(driver_flexcomm_usart_freertos.LPC55S69)
include_if_use(driver_fro_calib.LPC55S69)
include_if_use(driver_ft3267.LPC55S69)
include_if_use(driver_ft5406.LPC55S69)
include_if_use(driver_ft6x06.LPC55S69)
include_if_use(driver_fxas21002cq.LPC55S69)
include_if_use(driver_fxls8974cf.LPC55S69)
include_if_use(driver_fxos8700cq.LPC55S69)
include_if_use(driver_gint.LPC55S69)
include_if_use(driver_gt911.LPC55S69)
include_if_use(driver_hashcrypt.LPC55S69)
include_if_use(driver_htu21d.LPC55S69)
include_if_use(driver_iap1.LPC55S69)
include_if_use(driver_icm42688p.LPC55S69)
include_if_use(driver_ili9341.LPC55S69)
include_if_use(driver_inputmux.LPC55S69)
include_if_use(driver_inputmux_connections.LPC55S69)
include_if_use(driver_lpadc.LPC55S69)
include_if_use(driver_lpc_crc.LPC55S69)
include_if_use(driver_lpc_dma.LPC55S69)
include_if_use(driver_lpc_gpio.LPC55S69)
include_if_use(driver_lpc_iocon.LPC55S69)
include_if_use(driver_lpc_rtc.LPC55S69)
include_if_use(driver_lsm6dso.LPC55S69)
include_if_use(driver_mailbox.LPC55S69)
include_if_use(driver_max30101.LPC55S69)
include_if_use(driver_mma8451q.LPC55S69)
include_if_use(driver_mma8652fc.LPC55S69)
include_if_use(driver_mrt.LPC55S69)
include_if_use(driver_mx25r_flash.LPC55S69)
include_if_use(driver_ostimer.LPC55S69)
include_if_use(driver_p3t1755.LPC55S69)
include_if_use(driver_pca9420.LPC55S69)
include_if_use(driver_pca9422.LPC55S69)
include_if_use(driver_pcm186x.LPC55S69)
include_if_use(driver_pcm512x.LPC55S69)
include_if_use(driver_pf1550.LPC55S69)
include_if_use(driver_pf3000.LPC55S69)
include_if_use(driver_pf5020.LPC55S69)
include_if_use(driver_pint.LPC55S69)
include_if_use(driver_plu.LPC55S69)
include_if_use(driver_power.LPC55S69)
include_if_use(driver_powerquad.LPC55S69)
include_if_use(driver_powerquad_cmsis.LPC55S69)
include_if_use(driver_prince.LPC55S69)
include_if_use(driver_psp27801.LPC55S69)
include_if_use(driver_puf.LPC55S69)
include_if_use(driver_reset.LPC55S69)
include_if_use(driver_rng_1.LPC55S69)
include_if_use(driver_rtt.LPC55S69)
include_if_use(driver_rtt_template.LPC55S69)
include_if_use(driver_sctimer.LPC55S69)
include_if_use(driver_sdif.LPC55S69)
include_if_use(driver_sgtl5000.LPC55S69)
include_if_use(driver_ssd1963.LPC55S69)
include_if_use(driver_st7796s.LPC55S69)
include_if_use(driver_sysctl.LPC55S69)
include_if_use(driver_tfa9896.LPC55S69)
include_if_use(driver_tfa9xxx.LPC55S69)
include_if_use(driver_tfa9xxx_hal.LPC55S69)
include_if_use(driver_tma525b.LPC55S69)
include_if_use(driver_tsl2561.LPC55S69)
include_if_use(driver_utick.LPC55S69)
include_if_use(driver_video-common.LPC55S69)
include_if_use(driver_video-i2c.LPC55S69)
include_if_use(driver_wm8524.LPC55S69)
include_if_use(driver_wm8904.LPC55S69)
include_if_use(driver_wm8960.LPC55S69)
include_if_use(driver_wm8962.LPC55S69)
include_if_use(driver_wwdt.LPC55S69)
include_if_use(middleware_audio_voice_components_decoders_aac)
include_if_use(middleware_audio_voice_components_decoders_flac)
include_if_use(middleware_audio_voice_components_decoders_mp3)
include_if_use(middleware_audio_voice_components_decoders_wav)
include_if_use(middleware_audio_voice_components_ogg)
include_if_use(middleware_audio_voice_components_opus)
include_if_use(middleware_audio_voice_components_opusfile)
include_if_use(middleware_audio_voice_components_ssrc)
include_if_use(middleware_audio_voice_components_vit_cm33-lpc55s69)
include_if_use(middleware_audio_voice_maestro)
include_if_use(middleware_audio_voice_maestro_cci_enable)
include_if_use(middleware_audio_voice_maestro_cei_enable)
include_if_use(middleware_audio_voice_maestro_element_audio_proc_enable)
include_if_use(middleware_audio_voice_maestro_element_audio_proc_ssrc_enable)
include_if_use(middleware_audio_voice_maestro_element_audio_sink_enable)
include_if_use(middleware_audio_voice_maestro_element_audio_src_enable)
include_if_use(middleware_audio_voice_maestro_element_decoder_aac_enable)
include_if_use(middleware_audio_voice_maestro_element_decoder_enable)
include_if_use(middleware_audio_voice_maestro_element_decoder_flac_enable)
include_if_use(middleware_audio_voice_maestro_element_decoder_mp3_enable)
include_if_use(middleware_audio_voice_maestro_element_decoder_opus_ogg_enable)
include_if_use(middleware_audio_voice_maestro_element_decoder_wav_enable)
include_if_use(middleware_audio_voice_maestro_element_encoder_enable)
include_if_use(middleware_audio_voice_maestro_element_encoder_opus_enable)
include_if_use(middleware_audio_voice_maestro_element_file_sink_enable)
include_if_use(middleware_audio_voice_maestro_element_file_src_enable)
include_if_use(middleware_audio_voice_maestro_element_mem_sink_enable)
include_if_use(middleware_audio_voice_maestro_element_mem_src_enable)
include_if_use(middleware_audio_voice_maestro_element_netbuf_src_enable)
include_if_use(middleware_audio_voice_maestro_element_process_sink_enable)
include_if_use(middleware_audio_voice_maestro_file_utils_enable)
include_if_use(middleware_emwin)
include_if_use(middleware_emwin_template)
include_if_use(middleware_fatfs)
include_if_use(middleware_fatfs_mmc)
include_if_use(middleware_fatfs_ram)
include_if_use(middleware_fatfs_sd)
include_if_use(middleware_fatfs_sdspi)
include_if_use(middleware_fatfs_template_mmc)
include_if_use(middleware_fatfs_template_nand)
include_if_use(middleware_fatfs_template_ram)
include_if_use(middleware_fatfs_template_sd)
include_if_use(middleware_fatfs_template_sdspi)
include_if_use(middleware_fatfs_template_usb)
include_if_use(middleware_fatfs_usb)
include_if_use(middleware_fmstr)
include_if_use(middleware_fmstr_platform_56f800e)
include_if_use(middleware_fmstr_platform_gen32le)
include_if_use(middleware_fmstr_platform_pa32)
include_if_use(middleware_fmstr_platform_s12z)
include_if_use(middleware_fmstr_platform_s32)
include_if_use(middleware_freertos-kernel)
include_if_use(middleware_freertos-kernel_cm33_non_trustzone)
include_if_use(middleware_freertos-kernel_cm33_trustzone_non_secure)
include_if_use(middleware_freertos-kernel_cm33_trustzone_secure)
include_if_use(middleware_freertos-kernel_config)
include_if_use(middleware_freertos-kernel_extension)
include_if_use(middleware_freertos-kernel_heap_1)
include_if_use(middleware_freertos-kernel_heap_2)
include_if_use(middleware_freertos-kernel_heap_3)
include_if_use(middleware_freertos-kernel_heap_4)
include_if_use(middleware_freertos-kernel_heap_5)
include_if_use(middleware_freertos-kernel_mpu_wrappers)
include_if_use(middleware_freertos-kernel_mpu_wrappers_v2)
include_if_use(middleware_freertos-kernel_tfm_ns)
include_if_use(middleware_freertos_corehttp)
include_if_use(middleware_llhttp)
include_if_use(middleware_lvgl)
include_if_use(middleware_lvgl_demo_benchmark)
include_if_use(middleware_lvgl_demo_common)
include_if_use(middleware_lvgl_demo_flex_layout)
include_if_use(middleware_lvgl_demo_keypad_encoder)
include_if_use(middleware_lvgl_demo_multilang)
include_if_use(middleware_lvgl_demo_music)
include_if_use(middleware_lvgl_demo_scroll)
include_if_use(middleware_lvgl_demo_stress)
include_if_use(middleware_lvgl_demo_transform)
include_if_use(middleware_lvgl_demo_widgets)
include_if_use(middleware_lvgl_template)
include_if_use(middleware_mbedcrypto)
include_if_use(middleware_mbedcrypto_port)
include_if_use(middleware_mbedcrypto_port_config)
include_if_use(middleware_mbedcrypto_port_rng)
include_if_use(middleware_mbedtls)
include_if_use(middleware_mbedtls_3rdparty)
include_if_use(middleware_mbedtls_port_ksdk)
include_if_use(middleware_mbedtls_tests)
include_if_use(middleware_mc_bldc_frac)
include_if_use(middleware_mc_pmsm_enc_dual_float)
include_if_use(middleware_mc_pmsm_enc_float)
include_if_use(middleware_mc_pmsm_enc_frac)
include_if_use(middleware_mc_pmsm_snsless_float)
include_if_use(middleware_mc_pmsm_snsless_frac)
include_if_use(middleware_mcuboot_bootutil)
include_if_use(middleware_mcuboot_bootutil_flashapi_mcx)
include_if_use(middleware_mcuboot_bootutil_flashapi_rt)
include_if_use(middleware_mcuboot_mbedtls-asn1)
include_if_use(middleware_mcuboot_nxp_app_support)
include_if_use(middleware_mcuboot_nxp_bootutil_port)
include_if_use(middleware_mcuboot_stack_heap_default_mbedtls)
include_if_use(middleware_mcuboot_stack_heap_default_tinycrypt)
include_if_use(middleware_mcuboot_tinycrypt)
include_if_use(middleware_motor_control_bldc_frac_template)
include_if_use(middleware_motor_control_bldc_frac_tsa)
include_if_use(middleware_motor_control_mc_drivers_lpcadc_sctimer)
include_if_use(middleware_motor_control_mcaa_cm33f)
include_if_use(middleware_motor_control_mcaa_cm33nodsp)
include_if_use(middleware_motor_control_pmsm_float_imcat)
include_if_use(middleware_motor_control_pmsm_float_template)
include_if_use(middleware_motor_control_pmsm_float_tsa)
include_if_use(middleware_motor_control_pmsm_frac_enc_tsa)
include_if_use(middleware_motor_control_pmsm_frac_template)
include_if_use(middleware_motor_control_pmsm_frac_tsa)
include_if_use(middleware_multicore_erpc)
include_if_use(middleware_multicore_erpc_arbitrator)
include_if_use(middleware_multicore_erpc_client)
include_if_use(middleware_multicore_erpc_doc)
include_if_use(middleware_multicore_erpc_eRPC_dspi_master_transport)
include_if_use(middleware_multicore_erpc_eRPC_dspi_slave_transport)
include_if_use(middleware_multicore_erpc_eRPC_i2c_slave_transport)
include_if_use(middleware_multicore_erpc_eRPC_lpi2c_slave_transport)
include_if_use(middleware_multicore_erpc_eRPC_lpspi_slave_transport)
include_if_use(middleware_multicore_erpc_eRPC_mu_transport)
include_if_use(middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_transport_master)
include_if_use(middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_transport_remote)
include_if_use(middleware_multicore_erpc_eRPC_rpmsg_lite_transport_master)
include_if_use(middleware_multicore_erpc_eRPC_rpmsg_lite_transport_remote)
include_if_use(middleware_multicore_erpc_eRPC_rpmsg_tty_rtos_transport)
include_if_use(middleware_multicore_erpc_eRPC_spi_master_transport)
include_if_use(middleware_multicore_erpc_eRPC_spi_slave_transport)
include_if_use(middleware_multicore_erpc_eRPC_uart_cmsis_transport)
include_if_use(middleware_multicore_erpc_examples_erpc_common_multicore)
include_if_use(middleware_multicore_erpc_examples_erpc_matrix_multiply_client)
include_if_use(middleware_multicore_erpc_examples_erpc_matrix_multiply_server)
include_if_use(middleware_multicore_erpc_examples_erpc_two_way_rpc_core0)
include_if_use(middleware_multicore_erpc_examples_erpc_two_way_rpc_core1)
include_if_use(middleware_multicore_erpc_port_freertos)
include_if_use(middleware_multicore_erpc_port_stdlib)
include_if_use(middleware_multicore_erpc_server)
include_if_use(middleware_multicore_mcmgr)
include_if_use(middleware_multicore_mcmgr_doc)
include_if_use(middleware_multicore_mcmgr_lpc55s69)
include_if_use(middleware_multicore_multicore_doc)
include_if_use(middleware_multicore_rpmsg-lite)
include_if_use(middleware_multicore_rpmsg-lite_bm)
include_if_use(middleware_multicore_rpmsg-lite_doc)
include_if_use(middleware_multicore_rpmsg-lite_freertos)
include_if_use(middleware_multicore_rpmsg-lite_lpc55s69)
include_if_use(middleware_multicore_rpmsg-lite_ns)
include_if_use(middleware_multicore_rpmsg-lite_qnx)
include_if_use(middleware_multicore_rpmsg-lite_queue)
include_if_use(middleware_multicore_rpmsg-lite_threadx)
include_if_use(middleware_multicore_rpmsg-lite_xos)
include_if_use(middleware_multicore_rpmsg-lite_zephyr)
include_if_use(middleware_pkcs11)
include_if_use(middleware_pmsm_mid_float)
include_if_use(middleware_pmsm_mid_frac)
include_if_use(middleware_pmsm_mid_frac_enc)
include_if_use(middleware_psatest_ns)
include_if_use(middleware_psatest_ns_crypto)
include_if_use(middleware_psatest_ns_initial_attestation)
include_if_use(middleware_psatest_ns_internal_trusted_storage)
include_if_use(middleware_psatest_ns_protected_storage)
include_if_use(middleware_psatest_ns_t_cose)
include_if_use(middleware_psatest_ns_tgt_dev_apis_nxp)
include_if_use(middleware_rtcesl_cm33f)
include_if_use(middleware_rtcesl_cm33nodsp)
include_if_use(middleware_sdmmc_common)
include_if_use(middleware_sdmmc_host_sdif)
include_if_use(middleware_sdmmc_host_sdif_blocking)
include_if_use(middleware_sdmmc_host_sdif_non_blocking)
include_if_use(middleware_sdmmc_mmc)
include_if_use(middleware_sdmmc_osa)
include_if_use(middleware_sdmmc_sd)
include_if_use(middleware_sdmmc_sdhc_template)
include_if_use(middleware_sdmmc_sdif_template)
include_if_use(middleware_sdmmc_sdio)
include_if_use(middleware_sdmmc_sdspi)
include_if_use(middleware_sdmmc_usdhc_template)
include_if_use(middleware_tfm_flash_iap1)
include_if_use(middleware_tfm_lpuart)
include_if_use(middleware_tfm_ns)
include_if_use(middleware_tfm_ns_board)
include_if_use(middleware_tfm_ns_mbedtls_compatibility)
include_if_use(middleware_tfm_ns_os_wrapper_baremetal)
include_if_use(middleware_tfm_ns_os_wrapper_rtos)
include_if_use(middleware_tfm_ns_test)
include_if_use(middleware_tfm_ns_test_attestation)
include_if_use(middleware_tfm_ns_test_attestation_asymmetric)
include_if_use(middleware_tfm_ns_test_attestation_symmetric)
include_if_use(middleware_tfm_ns_test_crypto)
include_if_use(middleware_tfm_ns_test_ipc)
include_if_use(middleware_tfm_ns_test_irq_flih)
include_if_use(middleware_tfm_ns_test_irq_slih)
include_if_use(middleware_tfm_ns_test_its)
include_if_use(middleware_tfm_ns_test_platform)
include_if_use(middleware_tfm_ns_test_ps)
include_if_use(middleware_tfm_ns_test_qcbor)
include_if_use(middleware_tfm_ns_test_s)
include_if_use(middleware_tfm_ns_test_tcose)
include_if_use(middleware_tfm_platform_test)
include_if_use(middleware_tfm_profile_large)
include_if_use(middleware_tfm_profile_large_ns_configs)
include_if_use(middleware_tfm_profile_large_ns_psatest_configs)
include_if_use(middleware_tfm_profile_large_ns_test_configs)
include_if_use(middleware_tfm_profile_large_s_test_configs)
include_if_use(middleware_tfm_profile_medium)
include_if_use(middleware_tfm_profile_medium_ns_configs)
include_if_use(middleware_tfm_profile_medium_ns_psatest_configs)
include_if_use(middleware_tfm_profile_medium_ns_test_configs)
include_if_use(middleware_tfm_profile_medium_s_test_configs)
include_if_use(middleware_tfm_profile_small)
include_if_use(middleware_tfm_profile_small_ns_configs)
include_if_use(middleware_tfm_profile_small_ns_psatest_configs)
include_if_use(middleware_tfm_profile_small_ns_test_configs)
include_if_use(middleware_tfm_profile_small_s_test_configs)
include_if_use(middleware_tfm_qcbor)
include_if_use(middleware_tfm_qcbor_test)
include_if_use(middleware_tfm_s_board)
include_if_use(middleware_tfm_s_initial_attestation)
include_if_use(middleware_tfm_s_initial_attestation_asymmetric)
include_if_use(middleware_tfm_s_initial_attestation_symmetric)
include_if_use(middleware_tfm_s_its)
include_if_use(middleware_tfm_s_its_load_info_common)
include_if_use(middleware_tfm_s_platform)
include_if_use(middleware_tfm_s_platform_common)
include_if_use(middleware_tfm_s_platform_sp_common)
include_if_use(middleware_tfm_s_ps)
include_if_use(middleware_tfm_s_test)
include_if_use(middleware_tfm_s_test_attestation)
include_if_use(middleware_tfm_s_test_attestation_asymmetric)
include_if_use(middleware_tfm_s_test_attestation_symmetric)
include_if_use(middleware_tfm_s_test_crypto)
include_if_use(middleware_tfm_s_test_ipc)
include_if_use(middleware_tfm_s_test_irq_flih)
include_if_use(middleware_tfm_s_test_irq_slih)
include_if_use(middleware_tfm_s_test_its)
include_if_use(middleware_tfm_s_test_platform)
include_if_use(middleware_tfm_s_test_ps)
include_if_use(middleware_tfm_t_cose_mac0_verify)
include_if_use(middleware_tfm_t_cose_sign1_verify)
include_if_use(middleware_tfm_usart)
include_if_use(middleware_tfmtests_ns)
include_if_use(middleware_tfmtests_ns_test_attestation)
include_if_use(middleware_tfmtests_ns_test_attestation_asymmetric)
include_if_use(middleware_tfmtests_ns_test_attestation_symmetric)
include_if_use(middleware_tfmtests_ns_test_tcose)
include_if_use(middleware_tinycbor)
include_if_use(middleware_usb_common_header)
include_if_use(middleware_usb_device_audio)
include_if_use(middleware_usb_device_ccid)
include_if_use(middleware_usb_device_cdc)
include_if_use(middleware_usb_device_cdc_ecm)
include_if_use(middleware_usb_device_cdc_rndis)
include_if_use(middleware_usb_device_common_header)
include_if_use(middleware_usb_device_controller_driver)
include_if_use(middleware_usb_device_dfu)
include_if_use(middleware_usb_device_hid)
include_if_use(middleware_usb_device_ip3511fs)
include_if_use(middleware_usb_device_ip3511fs_config_header)
include_if_use(middleware_usb_device_ip3511hs)
include_if_use(middleware_usb_device_ip3511hs_config_header)
include_if_use(middleware_usb_device_msd)
include_if_use(middleware_usb_device_mtp)
include_if_use(middleware_usb_device_phdc)
include_if_use(middleware_usb_device_printer)
include_if_use(middleware_usb_device_stack)
include_if_use(middleware_usb_device_video)
include_if_use(middleware_usb_host_audio)
include_if_use(middleware_usb_host_cdc)
include_if_use(middleware_usb_host_cdc_ecm)
include_if_use(middleware_usb_host_cdc_rndis)
include_if_use(middleware_usb_host_common_header)
include_if_use(middleware_usb_host_hid)
include_if_use(middleware_usb_host_ip3516hs)
include_if_use(middleware_usb_host_ip3516hs_config_header)
include_if_use(middleware_usb_host_msd)
include_if_use(middleware_usb_host_ohci)
include_if_use(middleware_usb_host_ohci_config_header)
include_if_use(middleware_usb_host_phdc)
include_if_use(middleware_usb_host_printer)
include_if_use(middleware_usb_host_stack)
include_if_use(middleware_usb_host_video)
include_if_use(middleware_usb_pd)
include_if_use(middleware_usb_pd_altmode)
include_if_use(middleware_usb_pd_compliance_test_report)
include_if_use(middleware_usb_pd_config_header)
include_if_use(middleware_usb_pd_phy_ptn5110)
include_if_use(middleware_usb_phy)
include_if_use(utilities_misc_utilities.LPC55S69)
include_if_use(utility_assert.LPC55S69)
include_if_use(utility_assert_lite.LPC55S69)
include_if_use(utility_debug_console.LPC55S69)
include_if_use(utility_debug_console_lite.LPC55S69)
include_if_use(utility_debug_console_template_config.LPC55S69)
include_if_use(utility_incbin.LPC55S69)
include_if_use(utility_notifier.LPC55S69)
include_if_use(utility_shell.LPC55S69)
include_if_use(utility_str.LPC55S69)

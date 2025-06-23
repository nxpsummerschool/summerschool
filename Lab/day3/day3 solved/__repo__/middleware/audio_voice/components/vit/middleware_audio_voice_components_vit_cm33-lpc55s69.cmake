# Add set(CONFIG_USE_middleware_audio_voice_components_vit_cm33-lpc55s69 true) in config.cmake to use this component

include_guard(GLOBAL)
message("${CMAKE_CURRENT_LIST_FILE} component is included.")

      if((CONFIG_TOOLCHAIN STREQUAL mcux OR CONFIG_TOOLCHAIN STREQUAL armgcc))
    target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
          ${CMAKE_CURRENT_LIST_DIR}/CortexM33-LPC55S69/Lib
          ${CMAKE_CURRENT_LIST_DIR}/CortexM33-LPC55S69/Lib/Inc
        )
    endif()

  
      if((CONFIG_TOOLCHAIN STREQUAL mcux OR CONFIG_TOOLCHAIN STREQUAL armgcc))
    target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
          ${CMAKE_CURRENT_LIST_DIR}/CortexM33-LPC55S69/Lib/libVIT_CM33_LPC55S69_v04_11_00.a
        -Wl,--end-group
    )
    endif()

  
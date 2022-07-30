# Kernel
include vendor/exthm/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/exthm/config/BoardConfigQcom.mk
endif

# Soong
include vendor/exthm/config/BoardConfigSoong.mk
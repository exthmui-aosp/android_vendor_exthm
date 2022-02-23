# Recovery
BOARD_USES_FULL_RECOVERY_IMAGE ?= true

# Kernel
include vendor/exthm/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include hardware/qcom-caf/common/BoardConfigQcom.mk
endif

# Soong
include vendor/exthm/config/BoardConfigSoong.mk

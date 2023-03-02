#
# Copyright (C) 2022 The exTHmUI Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Version
EXTHM_NUM_VERSION := 14.0
EXTHM_BRANCH := Utsuho
EXTHM_BUILD_TYPE := DEBUG
EXTHM_DATE := $(shell date -u +%Y%m%d)
EXTHM_DEVICE := $(shell echo "$(TARGET_PRODUCT)" | cut -d '_' -f 2,3)

ifeq ($(IS_RELEASE), true)
    EXTHM_BUILD_TYPE := RELEASE
endif

EXTHM_VERSION := exTHmUI-$(EXTHM_NUM_VERSION)-$(EXTHM_BRANCH)-$(EXTHM_DEVICE)-$(EXTHM_BUILD_TYPE)-$(EXTHM_DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.exthm.version=$(EXTHM_VERSION) \
    ro.exthm.branch=$(EXTHM_BRANCH) \
    ro.exthm.build.version=$(EXTHM_NUM_VERSION) \
    ro.exthm.build.type=$(EXTHM_BUILD_TYPE)

# Signing
ifeq (user,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard .android-certs/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := .android-certs/releasekey
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
ifneq (,$(wildcard .android-certs/verity.pk8))
PRODUCT_VERITY_SIGNING_KEY := .android-certs/verity
endif
ifneq (,$(wildcard .android-certs/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := .android-certs/otakey.x509.pem
endif
endif

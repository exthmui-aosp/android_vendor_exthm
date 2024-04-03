#
# Copyright (C) 2022 The exTHmUI Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common exTHmUI stuff
$(call inherit-product, vendor/exthm/config/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/exthm/prebuilt/etc/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    Stk \
    YellowPage \
    Updater
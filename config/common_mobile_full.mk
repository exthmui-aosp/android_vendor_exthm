# Inherit common Exthm stuff
$(call inherit-product, vendor/exthm/config/common_mobile.mk)

PRODUCT_SIZE := full

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

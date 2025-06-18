# Inherit mobile full common Exthm stuff
$(call inherit-product, vendor/exthm/config/common_mobile_full.mk)

# Inherit tablet common Exthm stuff
$(call inherit-product, vendor/exthm/config/tablet.mk)

$(call inherit-product, vendor/exthm/config/telephony.mk)

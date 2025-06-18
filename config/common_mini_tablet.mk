# Inherit mobile mini common Exthm stuff
$(call inherit-product, vendor/exthm/config/common_mobile_mini.mk)

# Inherit tablet common Exthm stuff
$(call inherit-product, vendor/exthm/config/tablet.mk)

$(call inherit-product, vendor/exthm/config/telephony.mk)

# Inherit mobile mini common Aurora stuff
$(call inherit-product, vendor/aurora/config/common_mobile_mini.mk)

$(call inherit-product, vendor/aurora/config/telephony.mk)

# Inherit tablet common Aurora stuff
$(call inherit-product, vendor/aurora/config/tablet.mk)

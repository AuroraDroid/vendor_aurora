# Inherit mobile mini common Aurora stuff
$(call inherit-product, vendor/aurora/config/common_mobile_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/aurora/config/telephony.mk)

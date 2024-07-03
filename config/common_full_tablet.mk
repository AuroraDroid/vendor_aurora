$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Aurora stuff
$(call inherit-product, vendor/aurora/config/common_full.mk)

# Settings
PRODUCT_PRODUCT_PROPERTIES += \
    persist.settings.large_screen_opt.enabled=true

$(call inherit-product, vendor/aurora/config/telephony.mk)

PRODUCT_VERSION_MAJOR = 22
PRODUCT_VERSION_MINOR = 2

# Increase AURORA Version with each major release.
AURORA_VERSION := 2.0

AURORA_BUILD_TYPE ?= Unofficial

ifeq ($(WITH_GMS), true)
  AURORA_BUILD_VARIANT := Gapps
else
  AURORA_BUILD_VARIANT := Vanilla
endif

ifeq ($(AURORA_BUILD_TYPE), Official)
-include vendor/lineage-priv/keys/keys.mk
  OFFICIAL_DEVICES = $(shell cat vendor/lineage/aurors.devices)
  FOUND_DEVICE =  $(filter $(LINEAGE_BUILD), $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE),$(LINEAGE_BUILD))
      AURORA_BUILD_TYPE := Official
    else
      AURORA_BUILD_TYPE := Unofficial
    endif
endif

# Internal version
LINEAGE_VERSION := AuroraDroid-v$(AURORA_VERSION)-$(AURORA_BUILD_TYPE)-$(LINEAGE_BUILD)-$(AURORA_BUILD_VARIANT)-$(shell date +%Y%m%d)

# Display version
LINEAGE_DISPLAY_VERSION := AuroraDroid-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-v$(AURORA_VERSION)

# Build info
AURORA_BUILD_INFO := $(LINEAGE_VERSION)

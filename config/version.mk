EXTHM_BUILD_TYPE ?= Unofficial
EXTHM_VERSION := baka 

# Set EXTHM_BUILDTYPE from the env RELEASE_TYPE, for jenkins compat
EXTHM_DATE_YEAR := $(shell date -u +%Y)
EXTHM_DATE_MONTH := $(shell date -u +%m)
EXTHM_DATE_DAY := $(shell date -u +%d)
EXTHM_DATE_HOUR := $(shell date -u +%H)
EXTHM_DATE_MINUTE := $(shell date -u +%M)

EXTHM_BUILD_DATE_UTC := $(shell date -d '$(EXTHM_DATE_YEAR)-$(EXTHM_DATE_MONTH)-$(EXTHM_DATE_DAY) $(EXTHM_DATE_HOUR):$(EXTHM_DATE_MINUTE)' -u +%s)

# Display version
EXTHM_DISPLAY_VERSION := Exthm-$(EXTHM_VERSION)-$(shell date +%Y%m%d)-$(EXTHM_BUILD)-$(EXTHM_BUILD_TYPE)

# Platform Display version
EXTHM_PLATFORM_DISPLAY_VERSION := $(EXTHM_VERSION)-$(shell date +%Y%m%d)-$(EXTHM_BUILD)-$(EXTHM_BUILD_TYPE)

# Exthm version properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.exthm.version=$(EXTHM_VERSION) \
    ro.exthm.display.version=$(EXTHM_DISPLAY_VERSION) \
    ro.exthm.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.exthm.releasetype=$(EXTHM_BUILDTYPE)

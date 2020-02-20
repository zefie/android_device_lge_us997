ifeq ($(TARGET_OS_VARIANT),)
   # Scans the vendor directory to see which supported rom is synced into the tree.
   DEVICE_SUPPORTED_LINEAGE_ROMS := lineage carbon havoc aosp
   TARGET_OS_VARIANT := $(strip $(foreach R, $(DEVICE_SUPPORTED_LINEAGE_ROMS),$(if $(wildcard vendor/$(R)/config/common.mk),$(R))))
endif




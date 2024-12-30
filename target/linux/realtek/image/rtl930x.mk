# SPDX-License-Identifier: GPL-2.0-only
define Device/sodola_sl-swtgw2c8f
  KERNEL := \
        kernel-bin | \
        append-dtb | \
        lzma | \
        uImage lzma
  KERNEL_INITRAMFS := \
        kernel-bin | \
        append-dtb | \
        lzma | \
        uImage lzma
  SOC := rtl9303
  IMAGE_SIZE := 13312k
  UIMAGE_MAGIC := 0x83800000
  UIMAGE_NAME := 9.9.9.9
  DEVICE_VENDOR := SODOLA
endef
TARGET_DEVICES += sodola_sl-swtgw2c8f

define Device/zyxel_xgs1250-12
  SOC := rtl9302
  UIMAGE_MAGIC := 0x93001250
  ZYXEL_VERS := ABWE
  DEVICE_VENDOR := Zyxel
  DEVICE_MODEL := XGS1250-12
  DEVICE_PACKAGES := kmod-hwmon-gpiofan kmod-thermal
  IMAGE_SIZE := 13312k
  KERNEL_INITRAMFS := \
	kernel-bin | \
	append-dtb | \
	gzip | \
	zyxel-vers | \
	uImage gzip
endef
TARGET_DEVICES += zyxel_xgs1250-12

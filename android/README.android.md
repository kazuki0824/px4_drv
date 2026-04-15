# Android integration notes

This repository now exposes a Bazel/Kleaf entry point for building `px4_drv.ko`
as an external Android kernel module.

## What this repository provides

- `BUILD.bazel` target `//:px4_drv`
- source files for the kernel module
- firmware blob `etc/it930x-firmware.bin`

## What the product/device tree is expected to do

- provide a DDK workspace rooted outside this repository
- point `@gki_prebuilts//kernel_x86_64` at the matching synced kernel prebuilt
- build `//external/px4_drv:px4_drv`
- package the resulting `px4_drv.ko` into `BOARD_VENDOR_KERNEL_MODULES_ARCHIVE`
- copy `etc/it930x-firmware.bin` into `/vendor/firmware/it930x-firmware.bin`

## What remains unchanged

The Linux-oriented `driver/Kbuild` and `driver/Makefile` remain supported for
non-Android builds.

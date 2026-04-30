# Kbuild for ACK/Kleaf build of px4_drv.
#
# This is the single Kbuild entry point for the Android DDK build. Objects are
# listed relative to the repository root.

DEBUG := 0

PX4_USB_MAX_DEVICE := 0
PXMLT5_USB_MAX_DEVICE := 0
PXMLT8_USB_MAX_DEVICE := 0
ISDB2056_USB_MAX_DEVICE := 0
ISDB6014_4TS_USB_MAX_DEVICE := 0
PXM1UR_USB_MAX_DEVICE := 0
PXS1UR_USB_MAX_DEVICE := 0
ISDBT2071_USB_MAX_DEVICE := 0
PSB_DEBUG := 0
ITEDTV_BUS_USE_WORKQUEUE := 0

# Include paths are retained for future headers. Current problematic headers
# are also provided as driver-local wrappers below, because driver/*.o is built
# from a subdirectory and include-flag propagation differs across kbuild paths.
KBUILD_CPPFLAGS += -I$(src)/include -I$(src)/driver
EXTRA_CFLAGS += -I$(src)/include -I$(src)/driver
ccflags-y += -I$(src)/include -I$(src)/driver
subdir-ccflags-y += -I$(src)/include -I$(src)/driver

ifneq ($(DEBUG),0)
ccflags-y += -DDEBUG -g
endif

ifneq ($(PX4_USB_MAX_DEVICE),0)
ccflags-y += -DPX4_USB_MAX_DEVICE=$(PX4_USB_MAX_DEVICE)
endif
ifneq ($(PXMLT5_USB_MAX_DEVICE),0)
ccflags-y += -DPXMLT5_USB_MAX_DEVICE=$(PXMLT5_USB_MAX_DEVICE)
endif
ifneq ($(PXMLT8_USB_MAX_DEVICE),0)
ccflags-y += -DPXMLT8_USB_MAX_DEVICE=$(PXMLT8_USB_MAX_DEVICE)
endif
ifneq ($(ISDB2056_USB_MAX_DEVICE),0)
ccflags-y += -DISDB2056_USB_MAX_DEVICE=$(ISDB2056_USB_MAX_DEVICE)
endif
ifneq ($(ISDB6014_4TS_USB_MAX_DEVICE),0)
ccflags-y += -DISDB6014_4TS_USB_MAX_DEVICE=$(ISDB6014_4TS_USB_MAX_DEVICE)
endif
ifneq ($(PXM1UR_USB_MAX_DEVICE),0)
ccflags-y += -DPXM1UR_USB_MAX_DEVICE=$(PXM1UR_USB_MAX_DEVICE)
endif
ifneq ($(PXS1UR_USB_MAX_DEVICE),0)
ccflags-y += -DPXS1UR_USB_MAX_DEVICE=$(PXS1UR_USB_MAX_DEVICE)
endif
ifneq ($(ISDBT2071_USB_MAX_DEVICE),0)
ccflags-y += -DISDBT2071_USB_MAX_DEVICE=$(ISDBT2071_USB_MAX_DEVICE)
endif
ifneq ($(PSB_DEBUG),0)
ccflags-y += -DPSB_DEBUG
endif
ifneq ($(ITEDTV_BUS_USE_WORKQUEUE),0)
ccflags-y += -DITEDTV_BUS_USE_WORKQUEUE
endif

obj-m := px4_drv.o
px4_drv-y := \
    driver/driver_module.o \
    driver/ptx_chrdev.o \
    driver/px4_usb.o \
    driver/px4_usb_params.o \
    driver/px4_device.o \
    driver/px4_device_params.o \
    driver/px4_mldev.o \
    driver/pxmlt_device.o \
    driver/isdb2056_device.o \
    driver/it930x.o \
    driver/itedtv_bus.o \
    driver/tc90522.o \
    driver/r850.o \
    driver/rt710.o \
    driver/cxd2856er.o \
    driver/cxd2858er.o \
    driver/ringbuffer.o \
    driver/s1ur_device.o \
    driver/m1ur_device.o

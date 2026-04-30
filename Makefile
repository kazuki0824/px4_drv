# Makefile for ACK/Kleaf build of px4_drv.
#
# This module is built by Kleaf's kernel_module rule. The rule invokes make in
# this directory and passes KERNEL_SRC, O, and M. The actual object list is in
# top-level Kbuild.

KDIR ?= $(if $(KERNEL_SRC),$(KERNEL_SRC),/lib/modules/$(shell uname -r)/build)

ifneq ($(M),)
export KBUILD_EXTMOD := $(M)
else
export KBUILD_EXTMOD := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
endif

include $(KDIR)/Makefile

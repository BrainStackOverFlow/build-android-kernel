THIS_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
KDIR ?= ${THIS_DIR}/../out/android13-5.10/aosp/
PREBUILTS_CLANG_BIN ?= ${THIS_DIR}/../prebuilts/clang/host/linux-x86/clang-r450784e/bin
CLANG_TRIPLE ?= aarch64-linux-gnu-
ARCH ?= arm64

export PATH := ${PREBUILTS_CLANG_BIN}:${PATH}


obj-m += example_module.o

.PHONY: all
all:
	make -C ${KDIR} modules M=$(PWD) ARCH=${ARCH} CC=clang LD=ld.lld CLANG_TRIPLE=${CLANG_TRIPLE}

.PHONY: clean
clean:
	make -C ${KDIR} M=$(PWD) clean

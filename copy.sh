#!/bin/sh

#cp ../tinyemu-2019-12-21/js/lib.js .
#cp ../tinyemu-2019-12-21/js/riscvemu64* .
rm -f root-riscv64/* kernel-riscv64.bin
../tinyemu-2019-12-21/splitimg ~/git/buildroot/buildroot/o/riscv64_virt/images/rootfs.squashfs root-riscv64 256
cp ~/git/buildroot/buildroot/o/riscv64_virt/images/Image kernel-riscv64.bin


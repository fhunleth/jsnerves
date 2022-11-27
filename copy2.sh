#!/bin/sh

set -e
#cp ../tinyemu-2019-12-21/js/lib.js .
#cp ../tinyemu-2019-12-21/js/riscvemu64* .
rm -f root-riscv64/* root-riscv64.bin kernel-riscv64.bin

/home/fhunleth/git/nerves-project/nerves_systems/o/jslinux/host/bin/fwup ~/jslinux/circuits_quickstart/_build/jslinux_dev/nerves/images/circuits_quickstart.fw -d root-riscv64.bin
../tinyemu-2019-12-21/splitimg root-riscv64.bin root-riscv64 256
cp ~/git/nerves-project/nerves_systems/o/jslinux/images/Image kernel-riscv64.bin

echo Worked!


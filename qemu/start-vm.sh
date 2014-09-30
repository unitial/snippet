#!/bin/bash
memory=2048

qemu-system-x86_64 -machine accel=kvm -cpu host -smp 1 -m "${memory}" \
    -drive cache=writeback,if=virtio,file=./ubuntu.img \
    -drive cache=writeback,if=virtio,file=./swap.img \
    -drive cache=writeback,if=virtio,file=./ext4-raw.img \
    -device e1000,netdev=user.0 -netdev user,id=user.0,hostfwd=tcp::5555-:22 \
    -vnc 0.0.0.0:0
    # -drive cache=writeback,if=virtio,file=/mnt/ramfs/ext4-raw-ramfs.img \


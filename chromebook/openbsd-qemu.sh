#!/bin/sh

# qemu-img create -f qcow2 netbsd-7-0.qcow2 1G
#
# qemu-system-i386 -hda netbsd-7-0.qcow2 -cdrom install70.iso
#
# boot
# shell (ksh)
# ./install
#
# bsd base70.tgz man70.tgz game70.tgz
# 
# reboot
#

qemu-system-i386 -device AC97 -nic user,hostfwd=tcp::6666-:23,hostfwd=tcp::6600-:22,hostfwd=tcp::6000-:21 /home/arifendronugroho/openbsd-7-0.qcow2

#!/bin/sh

# qemu-img create -f qcow2 netbsd-9-2.qcow2 512M
# qemu-system-i386 -hda netbsd-9-2.qcow2 -cdrom NetBSD-9.2-i386.iso
#
# option 2 single user
# fdisk wd0
# disklabel wd0
# newfs -O 1 wd0a
#
# mount /dev/wd0a /mnt
# cd /mnt
# tar xvzf /i386 ... tar.gz
# echo "/dev/wd0a / ffs rw 1 1" > /etc/fstab
# sed -i s/NO/YES/ /etc/rc.conf
# halt -p

qemu-system-i386 -device AC97 -nic user,hostfwd=tcp::8888-:23,hostfwd=tcp::8800-:22,hostfwd=tcp::8000-:21 /home/arifendronugroho/netbsd-9-2.qcow2

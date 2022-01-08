#!/bin/sh

# qemu-img create -f qcow2 freebsd-13.qcow2 1G
# xz -d -v FreeBSD-13.0-RELEASE-i386-disc1.iso.xz
# qemu-system-i386 -hda freebsd-13.qcow2 -cdrom FreeBSD-13.0-RELEASE-i386-disc1.iso
#
# option 2 single user
# fdisk ada0
# disklabel ada0
# newfs -O 1 ada0a
#
# mount /dev/ada0a /mnt
# cd /mnt
# tar xvf /usr/freebsd-dist/ ... txz
# echo "/dev/ada0a / ufs rw 1 1" > /etc/fstab
# echo "hostname=freebsd-13.hp.chromebook" >> /etc/rc.conf
# halt -p
#

qemu-system-i386 -device AC97 -nic user,hostfwd=tcp::9999-:23,hostfwd=tcp::9900-:22,hostfwd=tcp::9000-:21 /home/arifendronugroho/freebsd-13.qcow2

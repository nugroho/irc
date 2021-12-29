#!/bin/sh
qemu-system-i386 -kernel vmlinuz -initrd image.gz -append "root=/dev/rd/0 rw --" -drive file=fat:rw:/mnt/chromeos/removable/USB\ Drive/ubuntu-acer/,index=1,media=disk -hda /home/arifendronugroho/breezybadger.qcow2

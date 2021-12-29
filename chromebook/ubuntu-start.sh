#!/bin/sh
qemu-system-i386 -kernel vmlinuz -initrd initrd.img-2.6.12-9-386 -append "root=/dev/hda1"  -hda /home/arifendronugroho/breezybadger.qcow2 

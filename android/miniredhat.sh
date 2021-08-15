qemu-system-i386 \
-kernel \
storage/samsung/termux/syslinux/redhat/vmlinuz-2.4.20-8 \
-initrd \
storage/samsung/termux/syslinux/redhat/imagemini.gz \
-append \
"root=/dev/ram0 rw ramdisk_size=65536 --"

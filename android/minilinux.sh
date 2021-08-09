qemu-system-i386 \
-kernel \
storage/samsung/termux/syslinux/vmlinuz \
-initrd \
storage/samsung/termux/syslinux/image.gz \
-append \
"root=/dev/rd/0 rw -- noapic"

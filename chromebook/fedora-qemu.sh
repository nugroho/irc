#!/bin/sh
qemu-system-i386 -device AC97 -nic user,hostfwd=tcp::5555-:23,hostfwd=tcp::5500-:22,hostfwd=tcp::5000-:21 fedora.qcow2

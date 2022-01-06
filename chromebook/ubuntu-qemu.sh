#!/bin/sh
qemu-system-i386 -device AC97 -nic user,hostfwd=tcp::4444-:23,hostfwd=tcp::4400-:22,hostfwd=tcp::4000-:21 /home/arifendronugroho/breezybadger.qcow2

#!/bin/sh
qemu-system-i386 -device AC97 -nic user,hostfwd=tcp::7777-:23,hostfwd=tcp::7700-:22,hostfwd=tcp::7000-:21 slackware.qcow2

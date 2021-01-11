#!/bin/sh
arm-linux-gnueabi-gcc -o $1.out $1.s
echo "Waiting for GDB ..."
qemu-arm -singlestep -g 1234 -L /usr/arm-linux-gnueabi/ $1.out

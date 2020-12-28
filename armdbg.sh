#!/bin/sh
arm-linux-gnueabi-as -g -o $1.o $1.s
arm-linux-gnueabi-gcc -o $1.out $1.o
rm $1.o
echo "Waiting for GDB ..."
qemu-arm -singlestep -g 1234 -L /usr/arm-linux-gnueabi/ $1.out

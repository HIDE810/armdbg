# armdbg
Debug scripts for ARM emulation

## Setup

```
sudo apt install gcc-arm-linux-gnueabi qemu-user gdb-multiarch
```

## Usage

To build your source and run QEMU:

```
./armdbg.sh <filename (no extension)>
```

To connect to QEMU via GDB:

```
gdb-multiarch -x arm.gdb <filename>
```

You can use the `reg` command to refer to register contents.
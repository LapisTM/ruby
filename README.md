# Ruby
### The Lapis Project.
Ruby is a free, open source bootloader made in NASM Assembly.

------------

## Files

#### src/boot.asm
Decompiled bootloader.
Tells BIOS that we are attempting to boot something.

#### compiled/boot.com
Compiled bootloader. (binary)

#### compiled/boot.img
Bootloader compiled into a disk image.


## Compiling

```
nasm -f bin boot.asm -o boot.com
dd if=boot.com of=boot.img bs=512 count=1
qemu-system-x86_64 -drive format=raw,file=boot.img
```

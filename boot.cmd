setenv bootargs "rootwait root=/dev/mmcblk0p2 init=/gokrazy/init"

setenv stdout serial
setenv stderr serial

# Loading kernel into 0x40000000 seems to be earliest unprotected to use
fatload mmc 0 0x40000000 vmlinuz

# Loading device tree into 0x49000000 the kernel is currently right under 49000000 bytes in size so if we use earlier we will overwrite part of it
fatload mmc 0 0x49000000 sun50i-h6-tanix-tx6.dtb

booti 0x40000000 - 0x49000000

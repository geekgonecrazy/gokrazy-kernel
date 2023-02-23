setenv bootargs "console=ttySAC2,115200n8 root=/dev/mmcblk0p2 rootwait panic=10 oops=panic init=/gokrazy/init"
setenv stdout=serial,vga
setenv stderr=serial,vga

fatload mmc 0 0x46000000 vmlinuz

fatload mmc 0 0x49000000 sun50i-h6-tanix-tx6.dtb

booti 0x46000000 - 0x49000000
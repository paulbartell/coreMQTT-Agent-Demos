qemu-system-arm -machine mps2-an385 -cpu cortex-m3 -kernel ./output/RTOSDemo.elf -netdev tap,id=mynet0,ifname=TAP0,script=no -net nic,macaddr=52:54:00:12:34:AD,model=lan9118,netdev=mynet0 -display gtk -m 16M  -nographic -serial stdio -monitor null -semihosting -semihosting-config enable=on,target=native -s -S
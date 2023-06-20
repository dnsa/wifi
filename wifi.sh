sudo apt update
sudo apt -y full-upgrade
sudo apt -y autoremove --purge
sudo apt clean
sudo apt -y install build-essential libncurses5-dev libncursesw5-dev zlib1g-dev gawk git gettext libssl-dev xsltproc wget unzip python
wget -O openwrt.tar.xz https://downloads.openwrt.org/releases/22.03.5/targets/ramips/mt76x8/openwrt-imagebuilder-22.03.5-ramips-mt76x8.Linux-x86_64.tar.xz
tar -xf openwrt.tar.xz
mv openwrt-imagebuilder-22.03.5-ramips-mt76x8.Linux-x86_64 openwrt
grep -Rl CONFIG_KERNEL_PRINTK=y openwrt|xargs sed -i s/CONFIG_KERNEL_PRINTK=y/CONFIG_KERNEL_PRINTK=n/
grep -Rl '# CONFIG_KERNEL_PRINTK is not set' openwrt|xargs sed -i 's/# CONFIG_KERNEL_PRINTK is not set/CONFIG_KERNEL_PRINTK=n/'
grep -Rl CONFIG_KERNEL_CRASHLOG=y openwrt|xargs sed -i s/CONFIG_KERNEL_CRASHLOG=y/CONFIG_KERNEL_CRASHLOG=n/
grep -Rl '# CONFIG_KERNEL_CRASHLOG is not set' openwrt|xargs sed -i 's/# CONFIG_KERNEL_CRASHLOG is not set/CONFIG_KERNEL_CRASHLOG=n/'
grep -Rl CONFIG_KERNEL_KALLSYMS=y openwrt|xargs sed -i s/CONFIG_KERNEL_KALLSYMS=y/CONFIG_KERNEL_KALLSYMS=n/
grep -Rl '# CONFIG_KERNEL_KALLSYMS is not set' openwrt|xargs sed -i 's/# CONFIG_KERNEL_KALLSYMS is not set/CONFIG_KERNEL_KALLSYMS=n/'
grep -Rl CONFIG_KERNEL_DEBUG_INFO=y openwrt|xargs sed -i s/CONFIG_KERNEL_DEBUG_INFO=y/CONFIG_KERNEL_DEBUG_INFO=n/
grep -Rl '# CONFIG_KERNEL_DEBUG_INFO is not set' openwrt|xargs sed -i 's/# CONFIG_KERNEL_DEBUG_INFO is not set/CONFIG_KERNEL_DEBUG_INFO=n/'
grep -Rl CONFIG_KERNEL_ELF_CORE=y openwrt|xargs sed -i s/CONFIG_KERNEL_ELF_CORE=y/CONFIG_KERNEL_ELF_CORE=n/
grep -Rl '# CONFIG_KERNEL_ELF_CORE is not set' openwrt|xargs sed -i 's/# CONFIG_KERNEL_ELF_CORE is not set/CONFIG_KERNEL_ELF_CORE=n/'
grep -Rl CONFIG_IPV6=y openwrt|xargs sed -i s/CONFIG_IPV6=y/CONFIG_IPV6=n/
grep -Rl '# CONFIG_IPV6 is not set' openwrt|xargs sed -i 's/# CONFIG_IPV6 is not set/CONFIG_IPV6=n/'
grep -Rl CONFIG_KERNEL_MAGIC_SYSRQ=y openwrt|xargs sed -i s/CONFIG_KERNEL_MAGIC_SYSRQ=y/CONFIG_KERNEL_MAGIC_SYSRQ=n/
grep -Rl '# CONFIG_KERNEL_MAGIC_SYSRQ is not set' openwrt|xargs sed -i 's/# CONFIG_KERNEL_MAGIC_SYSRQ is not set/CONFIG_KERNEL_MAGIC_SYSRQ=n/'
grep -Rl CONFIG_KERNEL_PRINTK_TIME=y openwrt|xargs sed -i s/CONFIG_KERNEL_PRINTK_TIME=y/CONFIG_KERNEL_PRINTK_TIME=n/
grep -Rl '# CONFIG_KERNEL_PRINTK_TIME is not set' openwrt|xargs sed -i 's/# CONFIG_KERNEL_PRINTK_TIME is not set/CONFIG_KERNEL_PRINTK_TIME=n/'
grep -Rl CONFIG_PACKAGE_MAC80211_DEBUGFS=y openwrt|xargs sed -i s/CONFIG_PACKAGE_MAC80211_DEBUGFS=y/CONFIG_PACKAGE_MAC80211_DEBUGFS=n/
grep -Rl '# CONFIG_PACKAGE_MAC80211_DEBUGFS is not set' openwrt|xargs sed -i 's/# CONFIG_PACKAGE_MAC80211_DEBUGFS is not set/CONFIG_PACKAGE_MAC80211_DEBUGFS=n/'
grep -Rl CONFIG_PACKAGE_MAC80211_MESH=y openwrt|xargs sed -i s/CONFIG_PACKAGE_MAC80211_MESH=y/CONFIG_PACKAGE_MAC80211_MESH=n/
grep -Rl '# CONFIG_PACKAGE_MAC80211_MESH is not set' openwrt|xargs sed -i 's/# CONFIG_PACKAGE_MAC80211_MESH is not set/CONFIG_PACKAGE_MAC80211_MESH=n/'
grep -Rl CONFIG_STRIP_KERNEL_EXPORTS=n openwrt|xargs sed -i s/CONFIG_STRIP_KERNEL_EXPORTS=n/CONFIG_STRIP_KERNEL_EXPORTS=y/
grep -Rl '# CONFIG_STRIP_KERNEL_EXPORTS is not set' openwrt|xargs sed -i 's/# CONFIG_STRIP_KERNEL_EXPORTS is not set/CONFIG_STRIP_KERNEL_EXPORTS=y/'
grep -Rl CONFIG_SERIAL_8250=y openwrt|xargs sed -i s/CONFIG_SERIAL_8250=y/CONFIG_SERIAL_8250=n/
grep -Rl '# CONFIG_SERIAL_8250 is not set' openwrt|xargs sed -i 's/# CONFIG_SERIAL_8250 is not set/CONFIG_SERIAL_8250=n/'
grep -Rl CONFIG_EARLY_PRINTK=y openwrt|xargs sed -i s/CONFIG_EARLY_PRINTK=y/CONFIG_EARLY_PRINTK=n/
grep -Rl '# CONFIG_EARLY_PRINTK is not set' openwrt|xargs sed -i 's/# CONFIG_EARLY_PRINTK is not set/CONFIG_EARLY_PRINTK=n/'
grep -Rl CONFIG_PACKAGE_zram-swap=n openwrt|xargs sed -i s/CONFIG_PACKAGE_zram-swap=n/CONFIG_PACKAGE_zram-swap=y/
grep -Rl '# CONFIG_PACKAGE_zram-swap is not set' openwrt|xargs sed -i 's/# CONFIG_PACKAGE_zram-swap is not set/CONFIG_PACKAGE_zram-swap=y/'
grep -Rl CONFIG_PROCD_ZRAM_TMPFS=n openwrt|xargs sed -i s/CONFIG_PROCD_ZRAM_TMPFS=n/CONFIG_PROCD_ZRAM_TMPFS=y/
grep -Rl '# CONFIG_PROCD_ZRAM_TMPFS is not set' openwrt|xargs sed -i 's/# CONFIG_PROCD_ZRAM_TMPFS is not set/CONFIG_PROCD_ZRAM_TMPFS=y/'
grep -Rl CONFIG_KERNEL_SWAP=n openwrt|xargs sed -i s/CONFIG_KERNEL_SWAP=n/CONFIG_KERNEL_SWAP=y/
grep -Rl '# CONFIG_KERNEL_SWAP is not set' openwrt|xargs sed -i 's/# CONFIG_KERNEL_SWAP is not set/CONFIG_KERNEL_SWAP=y/'
mkdir -p openwrt/files/etc/config
printf 'config dropbear'>openwrt/files/etc/config/dropbear
printf "config interface lan\noption proto static\noption ipaddr 10.0.0.1\noption netmask 255.255.255.0\noption ifname eth0.1\noption type bridge\nconfig interface wan\noption proto dhcp\nconfig interface ext\noption proto relay\nlist network lan\nlist network wan\nconfig switch switch0\nconfig switch_vlan\noption device switch0\noption vlan 1\noption ports '0 6t'">openwrt/files/etc/config/network
printf 'config system'>openwrt/files/etc/config/system
printf "config wifi-device wifi\noption type mac80211\noption htmode HT40\noption path platform/10300000.wmac\nconfig wifi-iface\noption device wifi\noption network lan\noption mode ap\noption ssid Wi-Fi\n#option encryption psk2\n#option key ~\n#config wifi-iface\n#option device wifi\n#option network wan\n#option mode sta\n#option ssid '!'\n#option encryption psk2\n#option key =">openwrt/files/etc/config/wireless
make -C openwrt image PROFILE=miwifi-nano PACKAGES='-ppp -ppp-mod-pppoe -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only -odhcpd -iptables -opkg zram-swap relayd' FILES=files
cp openwrt/bin/targets/ramips/mt76x8/openwrt-19.07.8-ramips-mt76x8-miwifi-nano-squashfs-sysupgrade.bin openwrt.bin
sed 's/openwrt-19.07.8-ramips-mt76x8-miwifi-nano-squashfs-sysupgrade.bin/\/tmp\/openwrt.bin/' openwrt/bin/targets/ramips/mt76x8/sha256sums|tee sha256sum

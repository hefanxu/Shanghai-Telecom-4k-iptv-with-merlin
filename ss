#!/bin/sh
#sed -i "s/cache-size=1500/cache-size=15000/" /tmp/etc/dnsmasq.conf
#sed -i "s/ppp1/ppp0/" /tmp/etc/dnsmasq.conf

CONFIG=$1
source /usr/sbin/helper.sh

pc_replace "cache-size=1500" "cache-size=9999" $CONFIG

pc_append "dhcp-option-force=125,00:00:00:00:22:02:06:48:47:57:2D:43:54:03:08:45:2D:31:34:30:57:2D:50:0D:02:00:2E:0C:02:00:2E:0B:02:00:55:0A:02:20:00" /tmp/etc/dnsmasq.conf
robocfg vlan 51 ports "0t 1t 2t 3t 4t 8t" vlan 85 ports "0t 1t 2t 3t 4t 8t"

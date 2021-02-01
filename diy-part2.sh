#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# git clone https://github.com/P3TERX/xxx package/xxx
git clone https://github.com/tty228/luci-app-serverchan package/lean/luci-app-serverchan
git clone https://github.com/ntlf9t/luci-app-dnspod package/lean/luci-app-dnspod
git clone https://github.com/esirplayground/luci-app-poweroff package/lean/luci-app-poweroff
git clone https://github.com/LeanFly/tencentcloud-openwrt-plugin-ddns package/tencentcloud-openwrt-plugin-ddns

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

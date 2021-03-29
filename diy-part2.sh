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
# git clone https://github.com/LeanFly/tencentcloud-openwrt-plugin-ddns package/tencentcloud-openwrt-plugin-ddns
# git clone https://github.com/immortalwrt/luci-app-koolproxyR package/lean/luci-app-koolproxyR
git clone https://github.com/project-lede/luci-app-godproxy package/lean/luci-app-godproxy
# git clone https://github.com/lisaac/luci-app-dockerman package/lean/luci-app-dockerman
# 梅林小宝的ddnsto内网穿透服务
git clone https://github.com/linkease/ddnsto-openwrt package/lean/ddnsto-openwrt
cp -r package/lean/ddnsto-openwrt/ package/network/services/
# 应用过滤
git clone https://github.com/destan19/OpenAppFilter package/lean/OpenAppFilter
# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
# Modify hostname
sed -i 's/OpenWrt/LeanWrt/g' package/base-files/files/bin/config_generate

#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
rm -rf ../lean/luci-theme-argon

git clone https://github.com/xiaorouji/openwrt-passwall package/passwall

git clone https://github.com/jefferymvp/koolproxyR package/koolproxyR

# Add ServerChan
git clone --depth=1 https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash package/OpenClash

# Add luci-app-adguardhome
svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome package/luci-app-adguardhome
svn co https://github.com/Lienol/openwrt/trunk/package/diy/adguardhome package/adguardhome

svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-dockerman package/luci-app-dockerman

git clone https://github.com/jerrykuku/luci-app-ttnode package/luci-app-ttnode

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
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
rm -rf ../lean/luci-theme-argon

#git clone https://github.com/jefferymvp/koolproxyR package/koolproxyR

git clone https://github.com/jerrykuku/luci-app-ttnode package/luci-app-ttnode

#git clone https://github.com/kenzok8/openwrt-packages package/kenzok8
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-advancedsetting package/luci-app-advancedsetting
svn co https://github.com/kenzok8/openwrt-packages/trunk/AdGuardHome package/AdGuardHome
git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/binge8/luci-theme-argon-mc.git package/luci-theme-argon-mc
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/binge8/luci-theme-butongwifi.git package/luci-theme-butongwifi
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/binge8/luci-app-koolproxyR.git package/luci-app-koolproxyR
svn co https://github.com/0saga0/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
svn co https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom/trunk/luci-theme-infinityfreedom package/luci-theme-infinityfreedom

#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#修改Banner
sed -i 's/%D %V, %C/%D %V, %C, Build by CheneyNetwork/g' package/base-files/files/etc/banner

# 网易云音乐完整版
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/cheneysource/luci-app-unblockneteasemusic

# OpenClash
git clone https://github.com/vernesong/OpenClash.git package/cheneysource/OpenClash

# SmartDNS
# git clone https://github.com/RealKiro/Luci-SmartDNS.git package/cheneysource/Luci-SmartDNS

# KPR plus+
git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/cheneysource/luci-app-koolproxyR

# Docker
# git clone  https://github.com/lisaac/luci-lib-docker.git package/kleinersource/luci-lib-docker
# git clone  https://github.com/lisaac/luci-app-dockerman.git package/kleinersource/luci-app-dockerman        

# SSRP
git clone -b master https://github.com/fw876/helloworld package/ssrplus

# 常用插件包
git clone https://github.com/kenzok8/openwrt-packages.git package/packagesplus

#passwall依赖包
git clone https://github.com/kenzok8/small.git package/cheneysource/small

# 刷新&安装源
./scripts/feeds update -a
./scripts/feeds install -a

#!/bin/bash
# diy-part2.sh

# 移除自带的老版本 passwall / passwall2 (防止冲突)
rm -rf feeds/luci/applications/luci-app-passwall*

# 拉取 PassWall2 最新代码到 package 目录
git clone https://github.com/Openwrt-Passwall/openwrt-passwall2.git package/passwall-luci-2

# 拉取 EasyTier 的 OpenWrt 插件和依赖
git clone https://github.com/EasyTier/luci-app-easytier.git package/easytier

# 更改默认 IP (可选，防止与光猫冲突)
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

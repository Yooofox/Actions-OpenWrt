#!/bin/bash
# diy-part1.sh

# 1. 引入 PassWall 依赖包源 (Xray, Sing-box 等核心)
echo 'src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main' >> feeds.conf.default

# 2. SmartDNS 通常在 ImmortalWrt 官方包里就有，为了确保最新，也可以直接拉取官方源码
# echo 'src-git smartdns https://github.com/pymumu/openwrt-smartdns' >> feeds.conf.default
# echo 'src-git luci_smartdns https://github.com/pymumu/luci-app-smartdns' >> feeds.conf.default

#!/bin/bash

mkdir package/addons
git clone --depth 1 https://github.com/muink/luci-app-natmapt package/addons/luci-app-natmapt
git clone --depth 1 https://github.com/muink/openwrt-natmapt package/addons/natmapt
git clone --depth 1 https://github.com/muink/openwrt-stuntman package/addons/stuntman

./svn.sh https://github.com/EasyTier/luci-app-easytier main luci-app-easytier
./svn.sh https://github.com/sundaqiang/openwrt-packages master luci-app-wolplus
mv luci-app-easytier package/addons
mv luci-app-wolplus package/addons
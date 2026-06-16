#!/bin/bash

git clone --depth 1 https://github.com/muink/luci-app-natmapt ../luci/luci-app-natmapt
git clone --depth 1 https://github.com/muink/openwrt-natmapt ../luci/natmapt
git clone --depth 1 https://github.com/muink/openwrt-stuntman ../luci/stuntman

cd ../tools
./svn.sh https://github.com/EasyTier/luci-app-easytier main luci-app-easytier
./svn.sh https://github.com/sundaqiang/openwrt-packages master luci-app-wolplus

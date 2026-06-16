#!/bin/bash

cd ../tools
./svn.sh https://github.com/EasyTier/luci-app-easytier main luci-app-easytier
./svn.sh https://github.com/sundaqiang/openwrt-packages master luci-app-wolplus

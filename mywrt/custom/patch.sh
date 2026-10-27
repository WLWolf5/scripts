#!/bin/bash

sed -i 's/util.pcdata/xml.pcdata/g' package/addons/luci-app-easytier/luasrc/model/cbi/easytier.lua

sed -i 's/192.168.6.1/192.168.1.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/Xiaomi-WR30U/g' package/base-files/files/bin/config_generate

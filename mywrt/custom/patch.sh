#!/bin/bash

cd ../luci/luci-app-easytier
sed -i 's/util.pcdata/xml.pcdata/g' /usr/lib/lua/luci/model/cbi/easytier.lua

#!/bin/bash
# 用于下载git仓库单个文件或文件夹
# 使用方法: ./svn.sh https://github.com/user/repo branch directory/file

rurl=$1
branch=$2
filename=$3
localdir="DLDir"
shift 3

git clone -b $branch --single-branch --depth 1 --filter=blob:none --sparse $rurl $localdir
cd $localdir
git sparse-checkout init --cone
git sparse-checkout set $filename
mv -n $filename ../../luci
cd ..
rm -rf $localdir

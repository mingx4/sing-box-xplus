#!/bin/bash
# Sing-Box-XPlus 一键安装脚本
set -e

echo "🔧 正在安装 Sing-Box-XPlus..."

# 安装 sing-box
mkdir -p /usr/local/etc/sing-box
curl -Lo /tmp/sb.tar.gz https://github.com/SagerNet/sing-box/releases/latest/download/sing-box-linux-amd64.tar.gz
tar -xzf /tmp/sb.tar.gz -C /tmp/
install /tmp/sing-box-*/sing-box /usr/local/bin/sing-box

# 下载默认配置
curl -Lo /usr/local/etc/sing-box/config.json https://raw.githubusercontent.com/mingx4/sing-box-xplus/master/config/config-template.json

echo "✅ 安装完成！你可以运行以下命令启动："
echo "sing-box run -c /usr/local/etc/sing-box/config.json"

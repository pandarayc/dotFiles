#!/bin/bash

# 代理开启
PROXY_HOST=192.168.1.96
SOCK_PORT=7897
HTTP_PORT=7897
export ALL_PROXY="http://$PROXY_HOST:$HTTP_PORT/"
export all_proxy="http://$PROXY_HOST:$HTTP_PORT/"
export http_proxy="http://$PROXY_HOST:$HTTP_PORT/"
export https_proxy="http://$PROXY_HOST:$HTTP_PORT/"
# echo -e "Acquire::http::Proxy \"http://$PROXY_HOST:$HTTP_PORT\";" | sudo tee -a /etc/apt/apt.conf > /dev/null
# echo -e "Acquire::https::Proxy \"http://$PROXY_HOST:$HTTP_PORT\";" | sudo tee -a /etc/apt/apt.conf > /dev/null

## 请求国家墙
curl https://ip.gs
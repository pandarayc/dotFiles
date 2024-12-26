#!/bin/bash

## 代理关闭
unset ALL_PROXY
unset all_proxy
unset HTTPS_PROXY 
unset HTTP_PROXY 
# sudo sed -i -e '/Acquire::http::Proxy/d' /etc/apt/apt.conf
# sudo sed -i -e '/Acquire::https::Proxy/d' /etc/apt/apt.conf
# curl https://ip.gs%   
#!/bin/bash


# 安装包下载地址为：https://go.dev/dl/。

# 如果打不开可以使用这个地址：https://golang.google.cn/dl/。


VERSION=1.22.10
DOWNLOAD_PATH=~/download
INSTALL_PATH=/usr/local/


if [[ ! -f ${DOWNLOAD_PATH}/go${VERSION}.linux-amd64.tar.gz ]]; then
    wget -P ${DOWNLOAD_PATH} https://go.dev/dl/go${VERSION}.linux-amd64.tar.gz 
fi

tar -C /usr/local -xzf ${DOWNLOAD_PATH}/go${VERSION}.linux-amd64.tar.gz
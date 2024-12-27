

# 开启代理
proxy() {
    PROXY_HOST=localhost
    SOCK_PORT=7897
    HTTP_PORT=7897
    export ALL_PROXY="http://$PROXY_HOST:$HTTP_PORT/"
    export all_proxy="http://$PROXY_HOST:$HTTP_PORT/"
    export http_proxy="http://$PROXY_HOST:$HTTP_PORT/"
    export https_proxy="http://$PROXY_HOST:$HTTP_PORT/"
    # echo -e "Acquire::http::Proxy \"http://$PROXY_HOST:$HTTP_PORT\";" | sudo tee -a /etc/apt/apt.conf > /dev/null
    # echo -e "Acquire::https::Proxy \"http://$PROXY_HOST:$HTTP_PORT\";" | sudo tee -a /etc/apt/apt.conf > /dev/null

    echo "start proxy"

    ## 请求国家墙
    curl https://ip.gs
}

## 代理关闭
unproxy() {
    unset ALL_PROXY
    unset all_proxy
    unset HTTPS_PROXY 
    unset HTTP_PROXY 

    echo "close proxy"
}
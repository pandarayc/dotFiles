# wsl 配置相关

## /etc/wsl.conf
https://learn.microsoft.com/zh-tw/windows/wsl/systemd
```shell
# 启动sytemctl控制 需要shutdown wsl
[boot]
systemd=true
```

## wslconfig
https://learn.microsoft.com/zh-tw/windows/wsl/wsl-config#wslconfig
store: `%UserProfile%\.wslconfig`%`
```bat
[wsl2]
## 开启镜像模式
networkingMode=mirrored
```
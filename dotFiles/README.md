# 配置使用方法


## myrc 
个人配置使用方法  

1. 拷贝使用
```bash
## 拷贝myrc到home目录下 
cp `pwd`/myrc ~/.myrc

## 在对应rc配置文件下添加引用脚本
if [ -f ~/.myrc ]; then
    . ~/.myrc
fi
```
2. 软连接使用
```bash
# 在当前目录下执行
ln -s `pwd`/myrc ~/.myrc
```

## myscript 
定制脚本
```bash
ln -s `pwd`/myscript.sh ~/.myscript.sh

## 在对应rc配置文件下添加引用脚本
if [ -f ~/.myscript.sh ]; then
    . ~/.myscript.sh
fi

```

## gitconfig
git配置 
```bash
cp `pwd`/gitconfig ~/.gitconfig

```
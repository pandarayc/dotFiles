# 配置使用方法


## myrc 
个人配置使用方法  
```bash
## 拷贝myrc到home目录下 
cp myrc ~/.myrc

## 在对应rc配置文件下添加引用脚本
if [ -f ~/.myrc ]; then
    . ~/.myrc
fi
```
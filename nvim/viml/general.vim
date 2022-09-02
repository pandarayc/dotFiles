
" =============================================================
" General Setting 基础配置
" =============================================================

set nocompatible                    " 关闭vi兼容模式
set number                          " 显示行号
set history=500                     " 设置操作历史容量
" 设置 =a 会使得mintty复制功能失效
" PS:发现新方法（按住shift可以复制）
set mouse=a                          " 支持鼠标点击

"set autoread                        " 文件修改后自动载入 :e 手动载入
"colorscheme desert                  " 设置配色方案

syntax enable                       " 语法识别
syntax on                           " 语法高亮

filetype on                         " 识别文件类型
filetype plugin on                  " 根据文件类型匹配插件
filetype indent on                  " 根据文件类型匹配缩进规则


" 转移备份路径
"set backup
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//
"set undodir=~/.vim/.undo//          " 转移撤销文件路径
" 关闭备份
set nobackup                        " 不创建备份文件
set noswapfile                      " 不创建减缓文件
set undofile                        " 保留撤销历史

" set cursorline                      " 设置当前行高亮
"set cursorcolumn                    " 设置当前列高亮

" 修复ctrl+m 多光标操作选择的bug，但是改变了ctrl+v进行字符选中时将包含光标下的字符
set selection=inclusive
set selectmode=mouse,key

set backspace=2                     " 修复退格键失效
" set relativenumber
" set textwidth=80                    " 设置超过行数自动换行 (添加换行符)
"搜索
set showmatch                       " 光标自动标亮另一个括号
"设置文件保存路径
set vb t_vb=                        " 关闭声音
set guioptions=                     " 关闭菜单栏
set shellslash                      " 使用'/'作目录分隔符
" set autochdir                       " 设当前编辑文件为当前工作路径
set noautochdir                       " 不随意更改工作路径

set timeoutlen=1000 ttimeoutlen=0


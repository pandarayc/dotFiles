" =============================================================
"vim配置"
"@author raydrawc@gmail.com"
"
"
" =============================================================

scriptencoding utf-8

let s:script_path = expand('<sfile>:p:h')

let s:sourceList = [
      \ 'disabled',
      \ 'functions',
      \ 'plugins',
      \ 'commands',
      \ 'general',
      \ 'autocmds',
      \ 'mapping',
      \ 'neovim',
      \ 'plugins.config',
      \ 'style',
     \]
for s:item in s:sourceList
 exec 'source ' . s:script_path . '/viml/' . s:item . '.vim'
endfor

" Free memory
unlet s:script_path
unlet s:sourceList

 

" =============================================================
" 使用 vim-plug 管理插件
" =============================================================


if has("autocmd")
    " 记录上次修改文件的位置
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    " 关闭换行自动补全注释符
    " 设置loclist 和 quickfix在跨越底部栏显示
    " autocmd FileType qf wincmd J
    " 当NerdTree 为剩下唯一窗口是自动关闭
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif

set updatetime=500

"==========================================
" FileEncode Settings 文件编码,格式
"==========================================
":let $LANG = 'en_US'
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set langmenu=en_US.UTF=8            " 菜单编码
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim
set termencoding=utf=8              " 终端编码格式

" Use Unix as the standard file type
set fileformats=unix,dos,mac        " 文件格式选择顺序

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B


" =============================================================
" Other Setting 其他设置
" =============================================================
" vimrc文件修改之后自动加载, windows
autocmd! bufwritepost _vimrc source %
" vimrc文件修改之后自动加载, linux
autocmd! bufwritepost .vimrc source %

" 自动补全配置
" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu


" 增强模式中的命令行自动完成操作
set wildmenu
set wildmode=longest:full,list:full      " 设置命令行模式 显示列表并快速补全
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class
set wildignore+=*/tmp/*,            " MacOSX/Linux
set wildignore+=*\\tmp\\*,          " Windows
set wildignore+=.hg,.git.,svn        " 版本控制
set wildignore+=*.so,*.swp,*.zip,*.beam,*.meta,*.dll,*.dll.mdb,*.exe,*.pyc
set wildignore+=*.png,*.bmp,*.jpg,*.jpeg,*.FBX,*.tga
set wildignore+=*.unity3d,*.prefab,*.unity,*.asset,*.mat,*.meta

" 离开插入模式后自动关闭预览窗口
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" 回车即选中当前项
" inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"==========================================
" FileType Settings  文件类型设置
"==========================================

" 具体编辑文件类型的一般设置，比如不要 tab 等
" autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
" autocmd FileType ruby,javascript,html,css,xml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
" autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown set filetype=markdown.mkd
" autocmd BufRead,BufNewFile *.part set filetype=html
" autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai

" 设置可以高亮的关键字
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
  endif
endif

"==========================================
" Theme Settings  主题设置
"==========================================
set t_Co=256                        " 强制开启256色  mintty:option=>termain=>type=>xterm=256color
colorscheme onedark                  " 设置配色方案
"==========================================
" Theme Settings  插件配置
"==========================================
"
" ==== [ luochen1990/rainbow] ================================
let g:rainbow_active=1

let g:coc_disable_startup_warning = 1

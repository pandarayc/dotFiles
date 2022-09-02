scriptencoding utf-8

let s:script_path = expand('<sfile>:p:h')

function! s:source(layer) abort
  execute 'source ' . s:script_path . '/layer/' . a:layer . '.vim'
endfunction

call plug#begin(s:script_path . '/plugins')

" call s:source('coc')
" call s:source('syntax')
" call s:source('format')
" call s:source('enhance')
" call s:source('text-operate')
" call s:source('utils')
" call s:source('style')
"
Plug 'Raimondi/delimitMate'             " 自动补全括号等

Plug 'junegunn/fzf', {'do' : { -> fzf#install()}}
Plug 'junegunn/fzf.vim'                 " 异步模糊搜索插件  必须先装fzf插件

Plug 'vim-airline/vim-airline'          " 美化导航栏
Plug 'vim-airline/vim-airline-themes'   " 导航栏主题
Plug 'Yggdroot/indentLine'              " 显示缩进 “线”
Plug 'scrooloose/nerdcommenter'         " 快速注释
Plug 'scrooloose/nerdtree',{ 'on':  'NERDTreeToggle' } " 文件管理树 r 刷新l
Plug 'Xuyuanp/nerdtree-git-plugin'      " nerdtree 显示 git 最新修改标志
Plug 'joshdick/onedark.vim'             " 配色方案 onedrak
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'           " 显示git差异  [c ]c 跳转 差异位置
Plug 'tpope/vim-fugitive'               " vim 操作 git 并显示分支

Plug 'luochen1990/rainbow'              " 括号颜色
Plug 'mhinz/vim-startify'               " 初始化界面

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" go 语言加载项
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' } " GO语言辅助包
    " Plug 'majutsushi/tagbar'

Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

" Free memory
delfunction s:source
unlet s:script_path

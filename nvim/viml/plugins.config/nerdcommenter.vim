" ==== [ 插件 scrooloose/nerdcommenter ] ================================
" <leader>cc   加注释
" <leader>cu   解开注释
" <leader>ca 切换注释的样式:/*....*/和//..的切换
" <leader>c<space>  加上/解开注释, 智能判断
let g:NERDSpaceDelims = 1        " 在注释后加空格
let g:NERDToggleCheckAllLines = 1   " 检查选中行是否已注释
" 自定义注释
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }, 'erlang': {'left' : '%%' } }
let g:NERDDefaultAlign = 'left'         " 设置注释对齐方式 (左对齐) 方便删除

" ctrl + / 快速注释 
map <C-/> <Plug>NERDCommenterToggle
" 部分系统 ctrl + / 映射为 ctrl + _
map <C-_> <Plug>NERDCommenterToggle


scriptencoding utf-8

" =============================================================
" HostKey 键位设置
" =============================================================
"
" 重置leader键 空格键
let mapleader =  "\<space>"
let g:mapleader = "\<space>"

map <leader>= <esc>gg=G<cr>        " 快速格式化代码
nnoremap <leader># :<C=u>let @/=expand('<cword>')<cr>:set hlsearch<cr>  " 高亮当前单词


" 快速导航
" imap <m=k> <Up>           " Alt + K 插入模式下光标向上移动
" imap <m=j> <Down>         " Alt + J 插入模式下光标向下移动
" imap <m=h> <Left>         " Alt + H 插入模式下光标向左移动
" imap <m=l> <Right>        " Alt + L 插入模式下光标向右移动
imap <C=a> <esc>I
imap <C=e> <esc>A

" buff
noremap <leader>bd :bd<cr>
noremap <leader>bn :bn<cr>
noremap <leader>bp :bp<cr>

" 调整窗口
" nmap <M=k> :resize =3<CR>
" nmap <M=j> :resize +3<CR>
" nmap <M=h> :vertical resize +3<CR>
" nmap <M=l> :vertical resize =3<CR>
nmap <leader>wk <esc>:resize =3<CR>
nmap <leader>wj <esc>:resize +3<CR>
nmap <leader>wl <esc>:vertical resize +3<CR>
nmap <leader>wh <esc>:vertical resize =3<CR>

" tab
" map <c=tab> :tabnext<cr>        " gt
" map <c=s=tab> :tabprevious<cr>  " gT
" map <leader>tn :tabnew ./<cr>
" map <leader>tc :tabclose<cr>
" map <leader>te :tabe<cr>

" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

func! GetSelectedText()
    normal gv"xy
    let result = getreg("x")
    return result
endfunc

" copy in wsl
if has("clipboard") && executable("clip.exe")
    noremap <leader>y :call system('clip.exe', GetSelectedText())<CR>
else
    vnoremap <leader>y "+y
endif

" loclist
" map <leader>lo :lopen<cr>
map <leader>ll :lopen<cr><c-w>p<cr>
" map <leader>lw :lopen<cr>
" map <leader>lw :lwindow<cr>       " 不会自动force到loclist
map <leader>lc :lclose<cr>
map <leader>ln :lnext<cr>
map <leader>lp :lprevious<cr>

" quickfix
function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen 
        wincmd p
    else
        cclose
    endif
endfunction

nnoremap <silent> <F4> :call ToggleQuickFix()<cr>

map <leader>qq :copen<cr>
map <leader>qo :copen<cr>
" map <leader>qw :cwindow<cr>       " 不会自动 force 到quickfix
map <leader>qc :cclose<cr>
map <leader>qn :cnext<cr>
map <leader>qp :cprevious<cr>

" F1 废弃这个键,防止调出系统帮助
" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
nnoremap <F1> <Esc>

" 打开vimrc快捷键
nnoremap <leader>ev  :split $MYVIMRC<cr>
" 运行当前vimrc脚本
nnoremap <leader>sv  :source $MYVIMRC<cr>


" ===================== termail
" 特殊命名空间
tnoremap <Esc> <C-\><C-n>
tnoremap <C-[> <C-\><C-n>
tnoremap <A-j> <C-\><C-N><C-w>j 
tnoremap <A-k> <C-\><C-N><C-w>k 
tnoremap <A-l> <C-\><C-N><C-w>l 
inoremap <A-h> <C-\><C-N><C-w>h 
inoremap <A-j> <C-\><C-N><C-w>j 
inoremap <A-k> <C-\><C-N><C-w>k 
inoremap <A-l> <C-\> <C-N><C-w>l 
nnoremap <A-h> <C-w>h 
nnoremap <A-j> <C-w>j 
nnoremap <A-k> <C-w>k 
nnoremap <A-l> <C-w>l

" function! ToggleTerminal()
"     if empty((filter(getwininfo(), 'v:val.terminal')))
"         <Plug>(coc-terminal-toggle)
"     else
"         <c-\><c-n><Plug>(coc-terminal-toggle)
"     endif
" endfunction

nmap <c-;> <Plug>(coc-terminal-toggle)
tmap <c-;> <c-\><c-n><Plug>(coc-terminal-toggle)
inoremap <C-;> <C-\><C-N><Plug>(coc-terminal-toggle)
nmap <a-;> <c-;>
tmap <a-;> <c-;>
inoremap <a-;> <c-;>
" <Esc> <Plug>(coc-terminal-toggle)

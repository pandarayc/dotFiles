" 插件 scroloose/nerdtree =====================================
nmap <C-t> :NERDTreeToggle<CR>
imap <C-t> <esc>:NERDTreeToggle<CR>

let NERDTreeShowHidden=1            " 设置显示隐藏文件
let NERDTreeIgnore=[ '\.(swp|svn|pyc)$' ,'\.(png|dll|so|exe)$' , '\.(git|svn)' , '\.(beam)']
let g:NERDTreeNodeDelimiter = "\u00a0"


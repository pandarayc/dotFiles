" Signify（或仅 Sy）使用符号列来指示由版本控制系统 (VCS) 管理的文件中添加、修改和删除的行。
" ==== [ mhinz/vim-signify ] ================================
let g:signify_update_on_bufenter    = 0     " 缓冲区被修改时更新符号
let g:signify_update_on_focusgained = 1     " vim获取焦点时更新符号
nnoremap <leader>gr :SignifyRefresh<CR>
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)


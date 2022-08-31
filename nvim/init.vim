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

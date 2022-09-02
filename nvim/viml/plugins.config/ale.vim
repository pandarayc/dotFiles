" ==== [ 插件 w0rp/ale ] =====================================
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_lint_delay=500                " 延时编译
" let g:ale_maximun_file_size=1048576     " 设置检查文件最大
let g:ale_lint_on_enter=0               " 打开文件不制动编译
" let g:ale_sign_column_always=1
" let g:ale_open_list=1
"
" 设置使用不同的编译工具检查代码
" let g:ale_linters = { 'erlang': ['syntaxerl'], }


" 使用COC 提供错误
let g:ale_disable_lsp = 1

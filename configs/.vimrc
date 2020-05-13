" vim

syntax on
" 语法高亮

autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
" 用浅色高亮当前行

set tabstop=4
" Tab键的宽度

set softtabstop=4
set shiftwidth=4
"  统一缩进为4

set number
" 显示行号

colorscheme pablo
" 设置颜色主题

set ruler
" 在编辑过程中，在右下角显示光标位置的状态行

set scrolloff=3
" 光标移动到buffer的顶部和底部时保持3行距离


"remember last update or view postion"
" Only do this part when compiled with support for autocommands 
if has("autocmd")
" In text files, always limit the width of text to 78 characters 
autocmd BufRead *.txt set tw=78
" When editing a file, always jump to the last cursor position 
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif 
endif

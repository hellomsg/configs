set autoindent
set nolist
set number
set expandtab
set tabstop=4
autocmd BufNewFile,BufRead *.html,*.htm,*.css,*.js,*.sh,*.yaml,*.sc,*.scala set expandtab tabstop=2 shiftwidth=2
set fileencodings=utf-8,gbk
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O<Tab>
autocmd BufNewFile,BufRead *.sh inoremap { {}<Esc>i

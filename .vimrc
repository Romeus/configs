set t_Co=256

execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set tags=/home/romeus/prj/cornerstone/tags

" Ctags mappings
" Ctrl+] - go to definition
" Ctrl+T - Jump back from the definition.
" Ctrl+W Ctrl+] - Open the definition in a horizontal split
" Ctrl+\ - Open the definition in a new tab
" Alt+] - Open the definition in a vertical split

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

set wildmode=longest,list,full
set wildmenu

nmap ,cn :let @*=expand("%")<CR>
nmap ,cp :let @*=expand("%:p")<CR>
nnor ,yp :let @"=expand("%:p")<CR>    " Mnemonic: Yank File path
nnor ,yn :let @"=expand("%")<CR>      " Mnemonic: yank File Name

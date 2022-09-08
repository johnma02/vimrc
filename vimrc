set number
set cindent
set showmatch
set softtabstop=4
set shiftwidth=4
set expandtab
syntax on
set expandtab
set nowrap
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"autocmd BufNewFile *.cpp 0r ~/.config/vim/template.cpp
"if you want to make a template, create the template in this directory.

set makeprg=g++-11\ -std=c++17\ -o\ %:r\ %\
autocmd filetype cpp nnoremap <F9> :w <bar> :make<CR>
autocmd filetype cpp nnoremap <F10> :vert terminal ./%:r<CR>

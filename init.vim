" link this file to ~/.config/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:python_host_prog = '~/.virtualenvs/nvim/bin/python'
let g:python3_host_prog = '~/.virtualenvs/nvim/bin/python3'
source ~/.vimrc

set nocompatible               " be iMproved
let mapleader = "\<space>"

function! SafeLoad(sourceFile)
  let toSource=$HOME.'/.vim/'.a:sourceFile
  if filereadable(toSource)
      silent! execute 'source '.toSource
  endif
endfunction


if has('nvim')
  if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
else
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
endif

call plug#begin('~/.vim/plugged')

call SafeLoad("vimrc.before")
call SafeLoad("vimrc.bundles")

call plug#end()

call SafeLoad("vimrc.navigation")
call SafeLoad("vimrc.visual")
call SafeLoad("vimrc.commands")
call SafeLoad("vimrc.keys")
call SafeLoad("vimrc.after")

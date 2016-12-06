set nocompatible               " be iMproved
filetype off                   " required!

function! SafeLoad(sourceFile)
  let toSource=$HOME.'/.vim/'.a:sourceFile
  if filereadable(toSource)
      silent! execute 'source '.toSource
  endif
endfunction

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle - required!
Plugin 'VundleVim/Vundle.vim'

call SafeLoad("vimrc.before")
call SafeLoad("vimrc.bundles")
" required
call vundle#end()

call SafeLoad("vimrc.navigation")

call SafeLoad("vimrc.visual")
call SafeLoad("vimrc.commands")

filetype plugin indent on  " required!
syntax on

call SafeLoad("vimrc.keys")
call SafeLoad("vimrc.after")

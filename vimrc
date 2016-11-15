set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=$VIM_HOME/bundle/vundle/
"set rtp+=$VIM_HOME/bundle/powerline/powerline/bindings/vim
call vundle#rc("$VIM_HOME/bundle/")


" let Vundle manage Vundle - required! 
Bundle 'gmarik/vundle'


function! SafeLoad(sourceFile)
  let toSource=$VIM_HOME . '/' . a:sourceFile
  if filereadable(toSource)
      silent! execute 'source '.toSource
  endif
endfunction

call SafeLoad("vimrc.before")
call SafeLoad("vimrc.bundles")
call SafeLoad("vimrc.navigation")

call SafeLoad("vimrc.visual")
call SafeLoad("vimrc.commands")

filetype plugin indent on  " required!
syntax on

call SafeLoad("vimrc.keys")
call SafeLoad("vimrc.after")

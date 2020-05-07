#Installation

This will now work with Nvim and Vim8

Clone/link this folder to ~/.vim

			ln -s $(pwd) ~/.vim
      mkdir -p ~/.config/nvim

Link ini files

			ln -s $(pwd)/vimrc ~/.vimrc
			ln -s $(pwd)/init.vim ~/.config/nvim/init.vim

Install plugins

			:PlugInstall  (within VIM)

Enjoy!

Additional Packages:
js-beautify (nodejs) for js, css and html beautify
flake or pylint for Python Syntastic

For YouCompleteMe
nodejs-tern for javascript completions


Useful Keys:
gS gJ  - splitjoin multi <> single line code
<c-p> Yankring
<leader>p  CtrlPMixed
<leader>o  CtrlPBuffer
<leader>i  CtrlPMRU
<leader>u / F4  CtrlP
F3 NerdTree
F9 Tcomment
<c-n> select matching text to change
<alt-left/right> prev/next buffer (surf)
<leader><leader>w - easymotion to start of words
<leader><leader>f(letter) - easymotion to find letter
<leader><leader>f enter - easymotion to repeat last search
F2 CTAGS

Useful Commands:
:DirDiff A B  - directory diff
:VE - Vim explorer
:NTF - NerdTreeFind
:ppp - set paste
:js_beautify, css_beautify, html_beautify

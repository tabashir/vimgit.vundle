#Installation

Clone/link this folder to ~/.vim

			ln -s $(pwd) ~/.vim

Link ~/.vimrc to this vimrc

			ln -s $(pwd)/vimrc ~/.vimrc

Get Vundle

			git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Update plugins

			vim +PluginInstall +qall

Enjoy!

Additional Packages:
flake or pylint for Python Syntastic

For YouCompleteMe
nodejs-tern for javascript completions

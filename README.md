#Installation

Need to set/export VIM_HOME to this folder

			export VIM_HOME=$(pwd)

Link ~/.vimrc to this vimrc

			ln -s $VIM_HOME/vimrc ~/.vimrc

Get Vundle

			git clone https://github.com/VundleVim/Vundle.vim.git $VIM_HOME/bundle/Vundle.vim

Update plugins

			vim +PluginInstall +qall

Enjoy!

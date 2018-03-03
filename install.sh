#!/bin/sh
set -e

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo 'source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/extended.vim
' > ~/.vimrc

vim -c PlugInstall 2>/dev/null

cd ~/.vim/plugins/youcompleteme
./install.py --all

echo "Installed the Best VIM Configuration Ever! Enjoy :-)"

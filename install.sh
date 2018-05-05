#!/bin/bash
set -e

# Dependencies
brew install neovim ack python python3 mono go rust caskroom/cask/java yarn ctags
yarn global add typescript eslint_d prettier-eslint-cli

# Plugins
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


# NeoVim
ln -s $(where vim) /usr/local/bin/nv

echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
' > ~/.config/nvim/init.vim

mkdir -p ~/.config/nvim

sudo easy_install pip
pip install --user --upgrade neovim

# Done
echo "Installed the Best VIM Configuration Ever! Enjoy :-)"

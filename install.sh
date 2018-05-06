#!/bin/zsh
set -e

# Dependencies
brew install ctags neovim ack python python3 mono go rust caskroom/cask/java yarn ctags ag
yarn global add typescript eslint_d prettier-eslint-cli

# Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/extended.vim
' > ~/.vimrc

vim -c PlugInstall 2>/dev/null

cd ~/.vim/plugins/youcompleteme
git submodule update --init --recursive
./install.py --all

mkdir -p ~/.vim/undo

# NeoVim
mkdir -p ~/.config/nvim

echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
' > ~/.config/nvim/init.vim

sudo easy_install pip
pip install --user --upgrade neovim

ln -s $(where nvim) $(dirname $(where nvim))/nv

# Done
echo "Installed the Best VIM Configuration Ever! Enjoy :-)"

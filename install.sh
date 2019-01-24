#!/bin/sh

# Deps
brew upgrade ack yarn ruby perl python python3 git ag || true

# Vim
rm -f '/usr/local/bin/bundle'
brew upgrade vim || true
echo 'source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim' > ~/.vimrc

# Neovim
brew upgrade neovim || true
sudo easy_install pip
pip install --upgrade pip
easy_install six
pip2 install --user --upgrade neovim
pip3 install --user --upgrade neovim

ln -s $(which nvim) $(dirname $(which nvim))/nv

mkdir -p ~/.config/nvim
echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
' > ~/.config/nvim/init.vim

git config --global core.editor nvim

# Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c PlugInstall 2>/dev/null

# Undo
mkdir ~/.vim/undodir

# Extension
vim -c ':CocInstall coc-gocode coc-json coc-tsserver coc-html coc-css coc-java coc-solargraph coc-rls coc-yaml coc-pyls coc-highlight coc-emmet coc-snippets' 2>/dev/null

# Done
echo "You've installed the Best VIM Configuration Ever! Enjoy :-)"



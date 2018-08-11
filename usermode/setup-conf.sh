export HOME=/home/ssmike
git clone https://github.com/ssmike/dotfiles /home/ssmike/config
cd /home/ssmike/config
#git checkout mini
git submodule update --init
mkdir -p ~/.config/nvim/
./make-symlinks.sh
cp /zsh-keybinds ~/.zsh/xterm-256color-keybinds
ln -s ~/.vimrc ~/.config/nvim/init.vim
touch ~/.profile

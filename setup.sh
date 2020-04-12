#! /bin/bash


# sudo pacman -Syu git vim i3 wget

# vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh


# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# code
sudo pacman -Syu code
git config --global core.editor "code --wait"


# keyboard
sudo pacman -Syu xkeyboard-config xorg-xmodmap
localectl set-x11-keymap us chromebook
sudo cp ~/.dotfiles/root/lib/udev/hwdb.d/61-eve-keyboard.hwdb /lib/udev/hwdb.d/61-eve-keyboard.hwdb
sudo udevadm hwdb --update
sudo udevadm trigger

sudo apt update

# install zsh
sudo apt install zsh

# install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# configure zsh
mv ./.zshrc ~
mv ./antigen.zsh ~

# install go
echo "installing go..."
curl https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash

# https://github.com/psanford/wormhole-william
echo "installing wormhole william..."
~/.go/bin/go install github.com/psanford/wormhole-william@latest

# https://github.com/ilikenwf/apt-fast
echo "installing apt-fast..."
/bin/bash -c "$(curl -sL https://git.io/vokNn)"

# https://micro-editor.github.io/
echo "installing micro..."
cd /usr/bin
curl https://getmic.ro/r | sudo sh

# https://starship.rs/
echo "installing starship..."
curl -sS https://starship.rs/install.sh | sh

# install thef*ck
echo "installing thef*ck"
sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user

echo "Done! Reloading your shell now!"
source ~/.zshrc

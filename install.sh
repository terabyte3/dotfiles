# set up zsh
mv ./.zshrc ~
mv ./antigen.zsh ~
sudo apt install zsh

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

# install omz
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Done! Type `omz reload` to refresh now!"

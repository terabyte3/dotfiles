BOLD="$(tput bold 2>/dev/null || printf '')"
GREY="$(tput setaf 0 2>/dev/null || printf '')"
GREEN="$(tput setaf 2 2>/dev/null || printf '')"
NO_COLOR="$(tput sgr0 2>/dev/null || printf '')"

info() {
  printf '%s\n' "${BOLD}${GREY}>${NO_COLOR} $*"
}

completed() {
  printf '%s\n' "${GREEN}✓${NO_COLOR} $*"
}

info "updating package lists..."
sudo apt-get update > /dev/null

info "installing curl..."
sudo apt-get install curl -y > /dev/null

# install zsh
info "installing zsh..."
sudo apt-get install zsh -y > /dev/null

# install omz
# (sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended) > /dev/null

# configure zsh
cp ./.* ~ > /dev/null # supress `-r not specified`
info "changing your shell to zsh"
sudo chsh -s $(which zsh)

# install go
info "installing go..."
(curl https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | sudo bash) > /dev/null

# https://github.com/psanford/wormhole-william
info "installing wormhole william..."
(go install github.com/psanford/wormhole-william@latest) > /dev/null

# https://github.com/ilikenwf/apt-fast
info "installing apt-fast..."
(sudo bash -c "$(curl -sL https://git.io/vokNn)") > /dev/null

# https://micro-editor.github.io/
info "installing micro..."
cd /usr/bin
(curl https://getmic.ro/r | sudo sh) > /dev/null

# https://starship.rs/
info "installing starship..."
(sudo sh -c "$(curl -sS https://starship.rs/install.sh)" "" --yes) > /dev/null

# install thef*ck
info "installing thef*ck"
sudo apt-get install thefuck -y > /dev/null

info "installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

completed "all done! let's get started 💪🏽"
cd ~ # go back to home dir
zsh

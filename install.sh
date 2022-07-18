#!/bin/sh

set -e

WORK_DIR="$(pwd)"
HOST_NAME=mbp
COMMAND_LIST="$WORK_DIR/command/list.txt"
APP_LIST="$(pwd)/app/list.txt"
NODE_VERSION=v16.16.0

# set hostname
sudo scutil --set HostName $HOST_NAME

# install homebrew
sh -c $WORK_DIR/tools/homebrew.sh

# install commands by homebrew
cat $COMMAND_LIST | xargs brew install

# install apps by homebrew
cat $APP_LIST | xargs brew install --cask

# Initialize git environment
sh -c $WORK_DIR/tools/git.init.sh

# install oh-my-zsh
sh -c $WORK_DIR/tools/oh-my-zsh.install.sh

# install zsh proxy
ZSH_PROXY_PLUGIN_DIR=~/.oh-my-zsh/custom/plugins/zsh-proxy
rm -rf $ZSH_PROXY_PLUGIN_DIR
git clone https://github.com/yugasun/zsh-proxy.git $ZSH_PROXY_PLUGIN_DIR

# install lts node
fnm install $NODE_VERSION
fnm alias $NODE_VERSION default
fnm use default
node -v

# init .zshrc
copy $WORK_DIR/.zshrc ~/.zshrc

# install goenv
sh -c $WORK_DIR/tools/goenv.init.sh

# install nrm
pnpm install nrm -g

# install rust version manager
curl -sSf https://sh.rustup.rs | sh

# Source zsh config
source ~/.zshrc

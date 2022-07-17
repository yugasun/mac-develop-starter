#!/bin/sh

set -e

WORK_DIR="$(pwd)"
HOST_NAME=mbp
COMMAND_LIST="$WORK_DIR/command/list.txt"
APP_LIST="$(pwd)/app/list.txt"

# set hostname
sudo scutil --set HostName $HOST_NAME

# install homebrew
/bin/sh -c $WORK_DIR/homebrew.sh

# install commands by homebrew
cat $COMMAND_LIST | xargs brew install

# install apps by homebrew
cat $APP_LIST | xargs brew install

# Initialize git environment
/bin/sh -c $WORK_DIR/git.init.sh

# install zsh proxy
ZSH_PROXY_PLUGIN_DIR=~/.oh-my-zsh/custom/plugins/zsh-proxy
rm -rf $ZSH_PROXY_PLUGIN_DIR
git clone https://github.com/yugasun/zsh-proxy.git $ZSH_PROXY_PLUGIN_DIR
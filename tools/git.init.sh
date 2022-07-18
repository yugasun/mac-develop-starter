#!/bin/sh

set -e

# Before init git, please create personal access token on https://github.com/settings/tokens
# The minimum required scopes are 'repo', 'read:org', 'admin:public_key'.
GIT_TOKEN=$(cat ./github.token)
SSH_CONFIG_PATH=$HOME/.ssh
SSH_KEY_FILE=$SSH_CONFIG_PATH/id_ed25519
SSH_CONFIG_FILE=$SSH_CONFIG_PATH/config
GIT_NAME=yugasun
GIT_EMAIL=yuga_sun@163.com

git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global init.defaultBranch main

ssh-keygen -t ed25519 -C "$GIT_EMAIL"


# Start the ssh-agent in the background.
eval "$(ssh-agent -s)"

# Create ssh config
mkdir -p $SSH_CONFIG_PATH
cat <<EOT >> $SSH_CONFIG_FILE
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
EOT

# Add ssh key
ssh-add -K $SSH_KEY_FILE

# init gh command
gh auth login --with-token $GIT_TOKEN

#!/bin/sh

set -e

# Before init git, please create personal access token on https://github.com/settings/tokens
# The minimum required scopes are 'repo', 'read:org', 'admin:public_key'.
WORK_DIR="$(pwd)"
# Load git config variable: GIT_TOKEN, GIT_USER, GIT_EMAIL
source $WORK_DIR/git.config

SSH_CONFIG_PATH=$HOME/.ssh
SSH_KEY_FILE=$SSH_CONFIG_PATH/id_ed25519
SSH_CONFIG_FILE=$SSH_CONFIG_PATH/config

git config --global user.name "$GIT_USER"
git config --global user.email "$GIT_EMAIL"
git config --global init.defaultBranch main
git config --global core.excludesFile '~/.gitignore.global'

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

# copy global git ignore file
cp $WORK_DIR/.gitignore.global ~/.gitignore.global

# mac-develop-starter

[简体中文](./README.md) | English

Automatically config environment for a new macOS.

## Download project

```shell
curl -o mac-develop-starter.tar.gz https://codeload.github.com/yugasun/mac-develop-starter/tar.gz/refs/tags/v0.0.1
tar -xjvf mac-develop-starter.tar.gz --strip-components 1 -C ./mac-develop-starter
cd ./mac-develop-starter
```

## Prepare

Before installation, please create personal access token on https://github.com/settings/tokens, because it will auto initialize git configuration by `gh auth` command.
Then copy `git.config.example` file to `git.config`, modify to personal config:

```shell
# git personal access token
GIT_TOKEN=xxx
# git user name
GIT_USER=yugasun
# git user email
GIT_EMAIL=yuga_sun@163.com
```

## Start installation

```shell
./install.sh
```
## Commands List

It will auto install below commands by `Homebrew`:

- [x] [brew](https://brew.sh/): The Missing Package Manager for macOS (or Linux)
- [x] [git](https://git-scm.com/): Git is a free and open source distributed version control system
- [x] [gh](https://cli.github.com/): GitHub CLI brings GitHub to your termina
- [x] [oh-my-zsh](https://ohmyz.sh/): Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration
- [x] [autojump](https://github.com/wting/autojump): a faster way to navigate your filesystem
- [x] [docker-compose](https://docs.docker.com/compose/): Compose is a tool for defining and running multi-container Docker applications
- [x] [fnm](https://github.com/Schniz/fnm): Fast and simple Node.js version manager, built in Rust
- [x] [pnpm](https://pnpm.io/): Fast, disk space efficient package manager
- [x] [pyenv](https://github.com/pyenv/pyenv): Simple Python version management
- [x] [goenv](https://github.com/syndbg/goenv): Golang version management, like pyenv and rbenv, but for Go
- [x] [maven](https://maven.apache.org/): Apache Maven is a software project management and comprehension tool
- [x] [gradle](https://gradle.org/): Gradle is a build tool with a focus on build automation and support for multi-language development
- [x] [rustup-init](https://www.rust-lang.org/tools/install): Rustup installs The Rust Programming Language from the official release channels, enabling you to easily switch between stable, beta, and nightly compilers and keep them updated
- [x] [helm](https://helm.sh/): Helm is the best way to find, share, and use software built for Kubernetes.

> Notice: please install by requirements, just remove no need commands in `command/list.txt`


## Application List

It will auto install below applications by `Homebrew`:

- [x] [docker](https://www.docker.com/): Docker is an open platform for developing, shipping, and running applications
- [x] [google-chrome](https://www.google.com/chrome/): The browser built by Google
- [x] [visual-studio-code](https://code.visualstudio.com/): a lightweight but powerful source code editor which runs on your desktop
- [x] [temurin8](https://projects.eclipse.org/projects/adoptium.temurin): The Eclipse Temurin™ project provides code and processes that support the building of runtime binaries and associated technologies that are high performance, enterprise-caliber, cross-platform, open-source licensed, and Java SE TCK-tested for general use across the Java ecosystem 🔥
- [x] [iterm2](https://iterm2.com/): iTerm2 is a replacement for Terminal and the successor to iTerm 🔥
- [x] [spectacle](https://www.spectacleapp.com/): Move and resize windows with ease 🔥
- [x] [wechat](https://www.wechat.com/): Connecting a billion people with calls, chats and more 🔥
- [x] [sogouinput](https://shurufa.sogou.com/): A powerful input tool
- [x] [tencent-lemon](https://lemon.qq.com/): Mac manage tool
- [x] [youdaodict](https://cidian.youdao.com/): Youdao Dict

> Notice: please install by requirements, just remove no need commands in `app/list.txt`

## License

MIT License
Copyright (c) 2022 Yuga Sun
# mac-develop-starter

简体中文 | [English](./README.en-US.md)

全新 macOS 自动化配置工具

## 下载项目

```shell
curl -o mac-develop-starter.tar.gz https://codeload.github.com/yugasun/mac-develop-starter/tar.gz/refs/tags/v0.0.1
tar -xjvf mac-develop-starter.tar.gz --strip-components 1 -C ./mac-develop-starter
cd ./mac-develop-starter
```

## 准备

在安装前，需要创建 Github 的授权 Token，因为本项目将通过使用 Github CLI 来自动初始化 Git 相关配置。可以通过访问 https://github.com/settings/tokens 来创建。
然后复制 `git.config.example` 文件为 `git.config`，修改为个人配置，如下：

```shell
# Github 访问 token
GIT_TOKEN=xxx
# Github 用户名
GIT_USER=yugasun
# Github 邮箱
GIT_EMAIL=yuga_sun@163.com
```

## 执行安装

```shell
./install.sh
```

## 安装命令列表

本项目将通过通过 Homebrew 安装以下命令：

- [x] [brew](https://brew.sh/)：MacOS 包管理工具，可以通过命令安装应用。
- [x] [git](https://git-scm.com/): 代码版本管理工具
- [x] [gh](https://cli.github.com/): Github CLI 工具，通过命令行方式来管理 Github 项目
- [x] [oh-my-zsh](https://ohmyz.sh/): Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration
- [x] [autojump](https://github.com/wting/autojump): 快速访问目录，会基于历史访问记录训练
- [x] [docker-compose](https://docs.docker.com/compose/): Compose 是用于定义和运行多容器 Docker 应用程序的工具
- [x] [fnm](https://github.com/Schniz/fnm): 快速简单的Node.js版本管理器，内置于Rust
- [x] [pnpm](https://pnpm.io/): 快速的，节省磁盘空间的包管理工具
- [x] [pyenv](https://github.com/pyenv/pyenv): Python 版本管理工具
- [x] [goenv](https://github.com/syndbg/goenv): Golang 版本管理工具
- [x] [maven](https://maven.apache.org/): Maven 是一个项目管理工具，可以对 Java 项目进行构建、依赖管理
- [x] [gradle](https://gradle.org/): Gradle是一个基于Apache Ant和Apache Maven概念的项目自动化建构工具。Gradle 构建脚本使用的是Groovy 或Kotlin 的特定领域语言来编写的，而不是传统的XML
- [x] [rustup-init](https://www.rust-lang.org/tools/install): Rust 版本管理工具
- [x] [helm](https://helm.sh/): Helm 是 Kubernetes 的包管理器

> 提示: 可以根据个人需要修改 `command/list.txt` 列表，执行安装前将不需要命令从文件中删除就好。

## 安装应用列表


本项目将通过 `Homebrew` 自动安装以下应用：

- [x] [docker](https://www.docker.com/): Docker 是一个开源的应用容器引擎
- [x] [google-chrome](https://www.google.com/chrome/): 谷歌浏览器
- [x] [visual-studio-code](https://code.visualstudio.com/): 微软开发的轻量级的编程 IDE
- [x] [flutter](https://flutter.dev/): Flutter是谷歌的高性能、跨端UI框架，可以通过一套代码，支持iOS、Android、Windows/MAC/Linux等多个平台，且能达到原生性能。
- [x] [temurin8](https://projects.eclipse.org/projects/adoptium.temurin): Eclipse Temurin 是开源许可的运行时二进制文件，与其AdoptOpenJDK 前身不同，是经过Java SE TCK 测试并兼容在整个Java 生态系统中通用 🔥
- [x] [iterm2](https://iterm2.com/): 非常强大的命令行工具 🔥
- [x] [spectacle](https://www.spectacleapp.com/): 可以通过快捷键快速移动和放大/缩小窗口的工具 🔥
- [x] [wechat](https://www.wechat.com/): 微信 🔥
- [x] [sogouinput](https://shurufa.sogou.com/): 搜狗输入法
- [x] [tencent-lemon](https://lemon.qq.com/): Mac 电脑清理工具，可以实时了解Mac系统状况
- [x] [youdaodict](https://cidian.youdao.com/): 有道词典
- [x] [imageoptim](https://imageoptim.com/): 一款非常好用的图片压缩工具

> 提示: 可以根据个人需要修改 `app/list.txt` 列表，执行安装前将不需要命令从文件中删除就好。

## License

MIT License
Copyright (c) 2022 Yuga Sun
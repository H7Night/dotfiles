#!/bin/bash
# 激活zsh
source ~/.zshrc
# 开启代理
proxy
# 更新 brew
brew update
# 升级所有已安装的软件包
brew upgrade --greedy-auto-updates
# 清理旧的版本
brew cleanup --prune=all
# 关闭代理
uproxy
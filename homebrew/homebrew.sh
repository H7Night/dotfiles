#!/bin/bash

# 自动扫描已安装的所有软件，并在当前目录生成 Brewfile
# brew bundle dump --describe --force

# 定义颜色输出
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}开始配置 Homebrew 环境...${NC}"

# 1. 检查并安装 Homebrew
if ! command -v brew &> /dev/null; then
    echo -e "${BLUE}检测到未安装 Homebrew，正在开始安装...${NC}"
    # 使用官方安装脚本
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # 针对 Apple Silicon (M1/M2/M3) Mac 的路径配置
    if [[ $(uname -m) == "arm64" ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
else
    echo -e "${GREEN}Homebrew 已存在，跳过安装。${NC}"
fi

# 2. 查找 Brewfile
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BREWFILE_PATH="${SCRIPT_DIR}/Brewfile"

if [ -f "$BREWFILE_PATH" ]; then
    echo -e "${BLUE}发现 Brewfile，正在恢复软件清单...${NC}"

    # 使用 bundle 恢复所有软件
    # 如果下载由于网络问题报错，建议先开启代理
    brew bundle --file="$BREWFILE_PATH"

    echo -e "${GREEN}所有软件已恢复完成！${NC}"
else
    echo -e "${GREEN}未发现 Brewfile，你可以将导出的 Brewfile 放入此目录再运行。${NC}"
    echo -e "或者，你可以尝试手动列出安装（按现有列表）："
    # 如果没有 Brewfile，这里可以作为备用逻辑
    # brew list --formula | xargs brew install
fi

echo -e "${BLUE}正在清理旧版本缓存...${NC}"
brew cleanup

echo -e "${GREEN}配置任务全部完成！${NC}"

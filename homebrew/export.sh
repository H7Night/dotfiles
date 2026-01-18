#!/bin/bash
set -euo pipefail

# 自动导出当前已安装的软件清单到 Brewfile

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BREWFILE_PATH="${SCRIPT_DIR}/Brewfile"

if ! command -v brew &> /dev/null; then
    echo -e "${BLUE}未检测到 Homebrew，请先安装 Homebrew 再导出。${NC}"
    exit 1
fi

echo -e "${BLUE}正在导出 Homebrew 安装清单...${NC}"
brew bundle dump --describe --force --file="$BREWFILE_PATH"
echo -e "${GREEN}导出完成：${BREWFILE_PATH}${NC}"

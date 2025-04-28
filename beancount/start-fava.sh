#!/bin/bash

VENV_DIR="fava-env"
BEANCOUNT_FILE="main.bean"

# 检查当前是否在虚拟环境中（避免嵌套激活）
if [ -n "$VIRTUAL_ENV" ]; then
    echo "Deactivating current virtual environment..."
    deactivate
fi

# 检查虚拟环境是否存在
if [ ! -d "$VENV_DIR" ]; then
    echo "Virtual environment not found. Creating one..."
    python3 -m venv "$VENV_DIR"
    source "$VENV_DIR/bin/activate"
    echo "Installing fava..."
    pip install fava
else
    echo "Virtual environment found. Activating..."
    source "$VENV_DIR/bin/activate"
fi

# 检查 Beancount 文件是否存在
if [ ! -f "$BEANCOUNT_FILE" ]; then
    echo "Error: $BEANCOUNT_FILE not found in current directory!"
    exit 1
fi

# 启动 Fava
echo "Starting Fava on $BEANCOUNT_FILE..."
fava "$BEANCOUNT_FILE"
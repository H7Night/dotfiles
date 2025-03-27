@echo off
:: 强制使用UTF-8编码
chcp 65001 >nul
setlocal enabledelayedexpansion

:: =============================================
:: 配置区域
:: =============================================
set "LOG_FILE=.\link_%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.log"
set "SOURCE_DIR=%~dp0"  :: 脚本所在目录

:: =============================================
:: 初始化UTF-8日志文件
:: =============================================
echo. > "%LOG_FILE%"
(
    echo [%DATE% %TIME%] 开始执行符号链接操作
    echo [%DATE% %TIME%] 日志文件: %LOG_FILE%
    echo [%DATE% %TIME%] 源目录: %SOURCE_DIR%
    echo [%DATE% %TIME%] 用户目录: %USERPROFILE%
    echo.
) >> "%LOG_FILE%"

:: =============================================
:: 1. 创建 .gitconfig 链接
:: =============================================
set "GITCONFIG_SRC=%SOURCE_DIR%git\.gitconfig"
set "GITCONFIG_DEST=%USERPROFILE%\.gitconfig"

echo [%DATE% %TIME%] 处理 .gitconfig 链接 >> "%LOG_FILE%"
echo.
echo === 正在处理 .gitconfig 链接 ===

:: 检查源文件是否存在
if not exist "%GITCONFIG_SRC%" (
    echo [错误] 源文件不存在: %GITCONFIG_SRC%
    echo [%DATE% %TIME%] 错误: 源文件不存在: %GITCONFIG_SRC% >> "%LOG_FILE%"
    goto :error_exit
)

:: 检查目标是否已存在
if exist "%GITCONFIG_DEST%" (
    echo [警告] 目标已存在: %GITCONFIG_DEST%
    echo [%DATE% %TIME%] 警告: 目标已存在: %GITCONFIG_DEST% >> "%LOG_FILE%"
    
    :: 询问是否覆盖
    set /p "overwrite=是否覆盖现有文件？(y/n): "
    if /i "!overwrite!" neq "y" (
        echo [信息] 已跳过 .gitconfig 链接创建
        echo [%DATE% %TIME%] 用户选择跳过 .gitconfig 链接创建 >> "%LOG_FILE%"
        goto :nvim_link
    )
    
    :: 备份原有文件
    set "BACKUP_FILE=%USERPROFILE%\.gitconfig.bak_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%"
    move "%GITCONFIG_DEST%" "%BACKUP_FILE%" >nul
    if errorlevel 1 (
        echo [错误] 备份原文件失败
        echo [%DATE% %TIME%] 错误: 备份原文件失败 >> "%LOG_FILE%"
        goto :error_exit
    )
    echo [信息] 已备份原文件到: %BACKUP_FILE%
    echo [%DATE% %TIME%] 已备份原文件到: %BACKUP_FILE% >> "%LOG_FILE%"
)

:: 创建符号链接
::echo [操作] 正在创建: %GITCONFIG_DEST% -> %GITCONFIG_SRC%
::echo [%DATE% %TIME%] 正在创建: %GITCONFIG_DEST% -> %GITCONFIG_SRC% >> "%LOG_FILE%"
mklink "%GITCONFIG_DEST%" "%GITCONFIG_SRC%" >> "%LOG_FILE%" 2>&1

if errorlevel 1 (
    echo [错误] 创建 .gitconfig 链接失败
    echo [%DATE% %TIME%] 错误: 创建 .gitconfig 链接失败 >> "%LOG_FILE%"
    goto :error_exit
) else (
    echo [成功] .gitconfig 链接创建成功
    echo [%DATE% %TIME%] 成功: .gitconfig 链接创建成功 >> "%LOG_FILE%"
)

:: =============================================
:: 2. 创建 nvim 配置链接
:: =============================================
:nvim_link
set "NVIM_SRC=%SOURCE_DIR%nvim\.config\nvim"
set "NVIM_DEST=%USERPROFILE%\.config\nvim"

echo.
echo === 正在处理 nvim 配置链接 ===
echo [%DATE% %TIME%] 处理 nvim 配置链接 >> "%LOG_FILE%"

:: 检查源目录是否存在
if not exist "%NVIM_SRC%\" (
    echo [错误] 源目录不存在: %NVIM_SRC%
    echo [%DATE% %TIME%] 错误: 源目录不存在: %NVIM_SRC% >> "%LOG_FILE%"
    goto :error_exit
)

:: 确保目标父目录存在
if not exist "%USERPROFILE%\.config\" (
    echo [操作] 创建 .config 目录
    echo [%DATE% %TIME%] 创建 .config 目录 >> "%LOG_FILE%"
    mkdir "%USERPROFILE%\.config\" >> "%LOG_FILE%" 2>&1
    if errorlevel 1 (
        echo [错误] 创建 .config 目录失败
        echo [%DATE% %TIME%] 错误: 创建 .config 目录失败 >> "%LOG_FILE%"
        goto :error_exit
    )
)

:: 检查目标是否已存在
if exist "%NVIM_DEST%\" (
    echo [警告] 目标已存在: %NVIM_DEST%
    echo [%DATE% %TIME%] 警告: 目标已存在: %NVIM_DEST% >> "%LOG_FILE%"
    
    :: 询问是否覆盖
    set /p "overwrite=是否覆盖现有目录？(y/n): "
    if /i "!overwrite!" neq "y" (
        echo [信息] 已跳过 nvim 配置链接创建
        echo [%DATE% %TIME%] 用户选择跳过 nvim 配置链接创建 >> "%LOG_FILE%"
        goto :success
    )
    
    :: 备份原有目录
    set "BACKUP_DIR=%USERPROFILE%\.config\nvim.bak_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%"
    robocopy "%NVIM_DEST%" "%BACKUP_DIR%" /mir >nul
    rmdir /s /q "%NVIM_DEST%" >nul 2>&1
    if exist "%NVIM_DEST
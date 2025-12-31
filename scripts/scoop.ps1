# 权限引导与检查
if ((Get-ExecutionPolicy -Scope CurrentUser) -ne 'RemoteSigned') {
    Write-Host "===============================================================" -ForegroundColor Yellow
    Write-Host "【提示】当前系统执行策略受限，无法运行脚本。" -ForegroundColor Yellow
    Write-Host "请以管理员身份打开 PowerShell 并执行以下命令后再试：" -ForegroundColor Cyan
    Write-Host "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force" -ForegroundColor White
    Write-Host "===============================================================" -ForegroundColor Yellow
    pause
    exit
}

# 路径定义
# $PSScriptRoot 是当前脚本所在的目录
$scriptDir = $PSScriptRoot
# 定位到备份文件路径
$backupFile = Join-Path $scriptDir "..\scoop\scoop_backup.json"

Write-Host "检测到脚本目录：$scriptDir" -ForegroundColor Gray
Write-Host "目标备份文件：$backupFile" -ForegroundColor Gray

# 检查并安装 Scoop
if (!(Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "正在安装 Scoop..." -ForegroundColor Cyan
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
    
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
    # iwr -useb get.scoop.sh | iex
}

# 导入数据
if (Test-Path $backupFile) {
    Write-Host "正在导入备份数据..." -ForegroundColor Green
    # 自动切换到备份文件所在目录执行，避免路径解析错误
    Push-Location (Split-Path $backupFile)
    
    scoop install aria2
    scoop config proxy 127.0.0.1:7890

    scoop import (Split-Path $backupFile -Leaf)
    
    scoop update -a
    scoop cleanup -a
    Pop-Location
    Write-Host "恢复任务已完成！" -ForegroundColor Green
}
else {
    Write-Host "错误：在 $backupFile 找不到备份文件，请检查目录结构。" -ForegroundColor Red
}

pause
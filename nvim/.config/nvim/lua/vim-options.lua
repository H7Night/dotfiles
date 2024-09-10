vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- 在 INSERT, COMMAND, TERMINAL 模式下，按下 <Shift+Space> 开启或关闭输入法
keymap({'c', 'i', 't'}, '<S-Space>', function()
    vim.g.neovide_input_ime = not vim.g.neovide_input_ime
end, {
    silent = true
})

local glob = vim.g
if glob.neovide then
    glob.neovide_input_ime = false
end

local is_win = vim.fn.has("win32") == 1
if is_win then
    -- Windows特定设置
    vim.opt.shell = "powershell"
    vim.opt.guifont = "JetBrainsMono NF:h11"
else
    -- macOS或Linux设置
    vim.opt.guifont = "JetBrainsMono Nerd Font:h11"
end

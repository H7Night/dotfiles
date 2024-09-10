vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })
-- 模式切换后关闭输入法
vim.api.nvim_create_autocmd({ "ModeChanged" }, {
    group = ime_input,
    pattern = "*",
    callback = function() vim.g.neovide_input_ime = false end
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

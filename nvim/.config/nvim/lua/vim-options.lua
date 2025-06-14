print("hello")
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 0
vim.opt.autoread = true

vim.opt.splitbelow = true
vim.opt.splitright = true

local ime_input = vim.api.nvim_create_augroup("ime_input", {
    clear = true
})
-- 模式切换后关闭输入法
-- vim.api.nvim_create_autocmd({"ModeChanged"}, {
--     group = ime_input,
--     pattern = "*",
--     callback = function()
--         vim.g.neovide_input_ime = false
--     end
-- })

-- local glob = vim.g
-- if glob.neovide then
--     glob.neovide_input_ime = false
-- end

-- 系统配置
local is_win = vim.fn.has("win32") == 1
if is_win then
    -- Windows特定设置
    -- vim.opt.shell = "powershell"
    vim.opt.guifont = "FiraCode Nerd Font Mono:h11"
else
    -- macOS或Linux设置
    vim.opt.guifont = "FiraCode Nerd Font Mono:h11"
end

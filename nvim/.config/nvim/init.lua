local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
  lazypath})
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({{("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg"},
  {"Press any key to exit...", "MoreMsg"}}, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- 引用配置与插件
require("vim-options")
require("lazy").setup("plugins")

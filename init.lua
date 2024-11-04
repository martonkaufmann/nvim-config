vim.wo.number = true
vim.g.mapleader = " "
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Setup lazy.nvim for package/plugin management
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("custom.remap")

vim.cmd "colorscheme tokyonight"

-- This is necessary for other LSPs to "pick up" on .templ files.
vim.filetype.add({ extension = { templ = "templ" } })

-- This is necessary to appropriately highlight codefences returned from denols
vim.g.markdown_fenced_languages = {
  "ts=typescript"
}

-- This is necessary to use treesitter for code folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.cmd([[ set nofoldenable ]])

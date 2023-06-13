-- Apparently need to do this early.
vim.g.mapleader = " "
--
-- Install Lazy
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

-- And set it up.
require("lazy").setup("plugins")

-- Now...load my local configs? E.g. Key mappings and stuff?
require("config")

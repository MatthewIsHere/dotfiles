local plugins = {
    "tanvirtin/monokai.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    "mbbill/undotree",
}
local opts = nil

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

require("lazy").setup(plugins, opts)

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

local plugins = {
    -- Package Manager --
    "wbthomason/packer.nvim",

    -- Color Scheme --
    "sainnhe/everforest",

    -- Nvim Tree --
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",

    -- Buffer Line --
    "akinsho/bufferline.nvim",

    -- Lua Line --
    "nvim-lualine/lualine.nvim",

    -- Treesitter --
    "nvim-treesitter/nvim-treesitter",

    -- Completeion --
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    -- Telescope --
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { { "nvim-lua/plenary.nvim" }, { "BurntSushi/ripgrep" } },
    },

    -- Mason --

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    -- Null-Ls --
    "jose-elias-alvarez/null-ls.nvim",
    "jay-babu/mason-null-ls.nvim",

    -- History --
    "mbbill/undotree",

    -- Git --
    "tpope/vim-fugitive",
}

local opts = {}

require("lazy").setup(plugins, opts)

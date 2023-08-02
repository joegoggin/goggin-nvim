local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
    -- Package Manager --
    use("wbthomason/packer.nvim")

    -- Color Scheme --
    use("sainnhe/everforest")

    -- Nvim Tree --
    use("nvim-tree/nvim-tree.lua")
    use("nvim-tree/nvim-web-devicons")

    -- Buffer Line --
    use("akinsho/bufferline.nvim")

    -- Lua Line --
    use("nvim-lualine/lualine.nvim")

    -- Treesitter --
    use("nvim-treesitter/nvim-treesitter")

    -- Completeion --
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- Telescope --
    use({
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- Mason --
    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })

    -- Null-Ls --
    use("jose-elias-alvarez/null-ls.nvim")
    use("jay-babu/mason-null-ls.nvim")

    -- History --
    use("mbbill/undotree")

    -- Git --
    use("tpope/vim-fugitive")

    -- Autopairs --
    use("windwp/nvim-autopairs")

    -- Live Server --
    use("barrett-ruth/live-server.nvim")

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)

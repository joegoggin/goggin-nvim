local treesitter_config_status_ok, treesitter_config = pcall(require, "nvim-treesitter.configs")

if not treesitter_config_status_ok then
    return
end

treesitter_config.setup({
    -- Languages --
    ensure_installed = {
        "css",
        "lua",
        "tsx",
        "typescript",
        "gitignore",
        "html",
        "javascript",
        "json",
        "markdown",
        "prisma",
        "regex",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})

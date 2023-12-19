local treesitter_config_status_ok, treesitter_config = pcall(require, "nvim-treesitter.configs")
local context_commentstring_status_ok, context_commentstring = pcall(require, "ts_context_commentstring")

if not treesitter_config_status_ok then
    return
end

if not context_commentstring_status_ok then
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
        "bash",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})

context_commentstring.setup({
    enable_autocmd = false,
})

local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
    return
end

local mason_lsp_status_ok, mason_lsp = pcall(require, "mason-lspconfig")
if not mason_lsp_status_ok then
    return
end

local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

local mason_null_ls_status_ok, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status_ok then
    return
end

local cmp_lsp_status_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_lsp_status_ok then
    return
end

local lsp_status_ok, lsp = pcall(require, "lspconfig")
if not lsp_status_ok then
    return
end

local formatting = null_ls.builtins.formatting

mason.setup()

mason_lsp.setup({
    ensure_installed = { "lua_ls", "tsserver", "emmet_ls", "tailwindcss", "prismals" },
})

null_ls.setup({
    sources = {
        formatting.prettierd.with({
            env = {
                PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/utils/linter-config/.prettierrc.json"),
            },
        }),
        formatting.stylua,
    },
})

mason_null_ls.setup({
    ensure_installed = { "stylua", "prettierd" },
})

local capabilities = cmp_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texth1 = sign.name, text = sign.text, numh1 = "" })
end

vim.diagnostic.config({
    virtual_text = false,
    signs = {
        active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
        focusable = true,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})

lsp.lua_ls.setup({
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
    virtual_text = false,
})

lsp.solargraph.setup({
    capabilities = capabilities,
})

lsp.tsserver.setup({
    capabilites = capabilities,
})

lsp.emmet_ls.setup({
    capabilites = capabilities,
    filetypes = { "html" },
})

lsp.tailwindcss.setup({
    capabilities = capabilities,
})

lsp.prismals.setup({
    capabilities = capabilities,
})

lsp.rust_analyzer.setup({
    capabilities = capabilities,
    cmd = {
        "rustup",
        "run",
        "stable",
        "rust-analyzer",
    },
})

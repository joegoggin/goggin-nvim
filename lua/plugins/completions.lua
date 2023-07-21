local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load { paths = { "~/.config/nvim/lua/snippets" } }

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<c-b>"] = cmp.mapping.scroll_docs(-4),
        ["<c-f>"] = cmp.mapping.scroll_docs(4),
        ["<c-o>"] = cmp.mapping.complete(),
        ["<c-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = "Snippet" },
        { name = "LSP" },
    },
    {
        { name = "buffer" }
    }),
})

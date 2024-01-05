local indent_status_ok, indent = pcall(require, "ibl")
local hooks_status_ok, hooks = pcall(require, "ibl.hooks")

if not indent_status_ok then
    return
end

if not hooks_status_ok then
    return
end

local highlight = {
    "IndentGreen",
    "IndentBlue",
    "IndentRed",
    "IndentCyan",
    "IndentOrange",
    "IndentPurple",
    "IndentYellow",
}

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "IndentGreen", { fg = "#8da101" })
    vim.api.nvim_set_hl(0, "IndentBlue", { fg = "#3a94c5" })
    vim.api.nvim_set_hl(0, "IndentRed", { fg = "#f85552" })
    vim.api.nvim_set_hl(0, "IndentCyan", { fg = "#35a77c" })
    vim.api.nvim_set_hl(0, "IndentOrange", { fg = "#f57d26" })
    vim.api.nvim_set_hl(0, "IndentPurple", { fg = "#df69ba" })
    vim.api.nvim_set_hl(0, "IndentYellow", { fg = "#dfa000" })
end)

indent.setup({ indent = { highlight = highlight } })

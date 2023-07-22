vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local nvim_tree_status_ok, nvim_tree = pcall(require, "nvim_tree")
if not nvim_tree_status_ok then
    return
end

nvim_tree.setup()


local keymap = vim.keymap.set
local builtin_status_ok, builtin = pcall(require, "telescope.builtin")

if not builtin_status_ok then
    return
end

-- Save File --

-- -- Normal Mode -- --
keymap("n", "<c-s>", "<cmd>lua vim.lsp.buf.format()<cr><cmd>w!<cr>", {
    desc = "Save File",
})

-- Quit --

-- -- Normal Mode -- --
keymap("n", "<leader>q", "<cmd>q<cr>", {
    desc = "Quit",
})

-- Remap Escape --

-- -- Insert Mode -- --
keymap("i", "jk", "<esc>", {
    desc = "Escape",
})

-- -- Visual Mode -- --
keymap("v", "jk", "<esc>", {
    desc = "Escape",
})

-- Stop Search --

-- -- Normal Mode -- --
keymap("n", "<leader>h", ":nohlsearch<CR>", {
    desc = "Stop Search",
})

-- Nvim Tree --

-- -- Normal Mode -- --
keymap("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", {
    desc = "Toggle Explorer",
})

-- Telescope --

-- -- Normal Mode -- --
keymap("n", "<leader>ff", builtin.find_files, {
    desc = "Find All Files",
})
keymap("n", "<leader>fg", builtin.git_files, {
    desc = "File Git Files",
})
keymap("n", "<leader>fo", builtin.oldfiles, {
    desc = "Find Old Files",
})
keymap("n", "<leader>fl", builtin.live_grep, {
    desc = "Search With Live Grep",
})
keymap("n", "<leader>fh", builtin.help_tags, {
    desc = "Search Help Tags",
})

-- Lsp --

-- -- Normal Mode -- --
keymap("n", "<leader>rn", vim.lsp.buf.rename, {
    desc = "Rename",
})
keymap("n", "<leader>ca", vim.lsp.buf.code_action, {
    desc = "Run Code Action",
})

keymap("n", "gd", vim.lsp.buf.definition, {
    desc = "Go to Definition",
})
keymap("n", "gi", vim.lsp.buf.implementation, {
    desc = "Go to Implementation",
})
keymap("n", "gr", builtin.lsp_references, {
    desc = "List References",
})
keymap("n", "gl", vim.diagnostic.open_float, {
    desc = "Show Diagnostics Info",
})
keymap("n", "K", vim.lsp.buf.hover, {
    desc = "Hover",
})

-- Window --

-- -- Normal Mode -- --
keymap("n", "<leader>wv", "<cmd>vsplit<cr>", {
    desc = "Verticle Split",
})
keymap("n", "<leader>wh", "<cmd>split<cr>", {
    desc = "Horizontal Split",
})
keymap("n", "<leader>wc", "<c-w>c", {
    desc = "Close Window",
})

-- Focus --

-- -- Normal Mode -- --
keymap("n", "<c-h>", "<c-w>h", {
    desc = "Focus Split Left",
})
keymap("n", "<c-j>", "<c-w>j", {
    desc = "Focus Split Below",
})
keymap("n", "<c-k>", "<c-w>k", {
    desc = "Focus Split Above",
})
keymap("n", "<c-l>", "<c-w>l", {
    desc = "Focus Split Right",
})
-- Change --

-- -- Normal Mode -- --
keymap("n", "cc", '"_cc', {
    desc = "Change Line",
})
keymap("n", "cw", '"_cw', {
    desc = "Change Work",
})
keymap("n", "ci{", '"_ci{', {
    desc = "Change Inside {}",
})
keymap("n", "ci{", '"_ci{', {
    desc = "Change Inside {}",
})
keymap("n", "ci[", '"_ci[', {
    desc = "Change Inside []",
})
keymap("n", "ci<", '"_ci<', {
    desc = "Change Inside <>",
})
keymap("n", "ci(", '"_ci(', {
    desc = "Change Inside ()",
})
keymap("n", 'ci"', '"_ci"', {
    desc = 'Change Inside ""',
})
keymap("n", "ci`", '"_ci`', {
    desc = "Change Inside ``}",
})

-- -- Visual Mode -- --
keymap("v", "c", '"_c', {
    desc = "Change Selection",
})

-- Delete --

-- -- Normal Mode -- --
keymap("n", "dd", '"_dd', {
    desc = "Delete Line",
})
keymap("n", "dw", '"_dw', {
    desc = "Delete Word",
})
keymap("n", "x", '"_x', {
    desc = "Delete Character",
})

-- -- Visual Mode -- --
keymap("v", "d", '"_d', {
    desc = "Delete Selection",
})

-- Clipboard --

-- -- Normal Mode -- --
keymap("n", "<c-c>", "yy", {
    desc = "Copy",
})
keymap("n", "<c-v>", "p", {
    desc = "Paste",
})
keymap("n", "<c-x>", "yydd", {
    desc = "Cut",
})

-- -- Visual Mode -- --
keymap("v", "<c-c>", "y", {
    desc = "Copy",
})
keymap("v", "<c-v>", "p", {
    desc = "Paste",
})
keymap("v", "<c-x>", "ygvd", {
    desc = "Cut",
})

-- -- Insert Mode -- --
keymap("v", "<c-v>", "<c-r>+", {
    desc = "Paste",
})

-- Select --

-- -- Normal Mode -- --
keymap("n", "<c-a>", "ggVG", {
    desc = "Select All",
})

-- Buffer --

-- -- Normal Mode -- --
keymap("n", "<s-h>", "<cmd>bprevious<cr>", {
    desc = "Previous Buffer",
})
keymap("n", "<s-l>", "<cmd>bnext<cr>", {
    desc = "Next Buffer",
})
keymap("n", "<leader>c", "<cmd>bd<cr><cmd>bprevious<cr>", {
    desc = "Close Buffer",
})

-- Undotree --

-- -- Normal Mode -- --
keymap("n", "<leader>u", "<cmd>UndotreeToggle<cr>", {
    desc = "Toggle Undotree",
})

-- Git --

-- Normal Mode -- --
keymap("n", "<leader>gg", "<cmd>Git<cr>", {
    desc = "Open Fugitive",
})

require("nvim-treesitter.configs").setup {
  -- Languages
  ensure_installed = {
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
}

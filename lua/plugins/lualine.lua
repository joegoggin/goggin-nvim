local lauline_status_ok, lauline = pcall(require, "lauline")
if not lauline_status_ok then
    return
end

lauline.setup {
  options = {
    icons_enabled = true,
    theme = "everforest",
  },
  sections = {
    lualine_a = {
      {
        "filename",
        path = 1,
      }
    }
  }
}


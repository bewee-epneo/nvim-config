local options = {
  git = {
    enable = false
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  filesystem_watchers = {
    enable = true,
  },
  renderer = {
    highlight_diagnostics = true,
    highlight_git = true,
    highlight_clipboard = "name",
    special_files = {},
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
}
require("nvim-tree").setup(options)

return {
  "2kabhishek/nerdy.nvim",
  event = { "VeryLazy" },
  cmd = "Nerdy",
  config = function()
    require("nerdy").setup {
      max_recents = 0,
      add_default_keybindings = false,
      copy_to_clipboard = false,
      copy_register = "+",
    }
  end,
}

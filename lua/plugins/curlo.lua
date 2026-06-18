return {
  "14096/curlo.nvim",
  ft = "curl",
  config = function()
    require("curlo").setup {
      keymap = "<leader>qrr",
      keymap_opts = { noremap = true, silent = true, desc = "Run curl under cursor" },
      display = "float",
      result_win_width = 80,
      result_win_height = 20,
      float = {
        width = 0.8,
        height = 0.8,
        border = "rounded",
        title = " curlo ",
      },
      show_headers = false,
      format_json = true,
      format_xml = true,
    }
  end,
}

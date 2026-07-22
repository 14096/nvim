return {
  "wsdjeg/iedit.nvim",
  event = "VeryLazy",
  config = function()
    require("iedit").setup {
      highlight = {
        active = {
          guibg = "#3c3836",
          guifg = "#bf616a",
          ctermbg = "",
          ctermfg = 175,
          bold = 1,
        },
        current = {
          guibg = "#3c3836",
          guifg = "#a3be8c",
          ctermbg = "",
          ctermfg = 109,
          bold = 1,
        },
        inactive = {
          guibg = "#3c3836",
          guifg = "#d8dee9",
          ctermbg = "",
          ctermfg = 145,
          bold = 1,
        },
      },
    }
    vim.keymap.set("n", "<C-d>", "<cmd>lua require('iedit').start()<cr>", { silent = true })
  end,
}

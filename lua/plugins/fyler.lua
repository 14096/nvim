return {
  "a7lavinraj/fyler.nvim",
  event = "VeryLazy",
  opts = {
    auto_confirm_simple_mutation = false,
    bound_cursor = true,
    follow_current_file = true,
    extensions = {
      git = {
        enabled = true,
        icons = {
          [" M"] = { icon = "\t\tMODIFIED" },
          ["M "] = { icon = "\t\tSTAGED" },
          ["MM"] = { icon = "\t\tSTAGED" },
          ["??"] = { icon = "\t\tUNTRACKED" },
          [" D"] = { icon = "\t\tDELETED" },
          ["D "] = { icon = "\t\tSTAGED" },
          ["R "] = { icon = "\t\tRENAMED" },
          ["UU"] = { icon = "\t\tCONFLICT" },
          ["!!"] = { icon = "\t\tIGNORED" },
        },
      },
    },
    hooks = {},
    integrations = {
      icon = "nvim_web_devicons",
    },
    kind = "replace",
    kind_presets = {
      floating = {
        border = "rounded",
        height = "50%",
        width = "50%",
        col = "center",
        row = "center",
      },
      replace = {},
      split_above = {
        height = "50%",
        win_opts = { winfixheight = true },
      },
      split_above_all = {
        height = "50%",
        win_opts = { winfixheight = true },
      },
      split_below = {
        height = "50%",
        win_opts = { winfixheight = true },
      },
      split_below_all = {
        height = "50%",
        win_opts = { winfixheight = true },
      },
      split_left = {
        width = "50%",
        win_opts = { winfixwidth = true },
      },
      split_left_most = {
        width = "50%",
        win_opts = { winfixwidth = true },
      },
      split_right = {
        width = "50%",
        win_opts = { winfixwidth = true },
      },
      split_right_most = {
        width = "50%",
        win_opts = { winfixwidth = true },
      },
    },
    mappings = {
      n = {
        ["-"] = { action = "visit", args = { parent = true } },
        ["."] = { action = "visit", args = { cursor = true } },
        ["<BS>"] = { action = "shrink", args = { parent = true } },
        ["<C-r>"] = { action = "refresh" },
        ["<C-s>"] = { action = "select", args = { split = true } },
        ["<C-t>"] = { action = "select", args = { tabedit = true } },
        ["<C-v>"] = { action = "select", args = { vsplit = true } },
        ["<CR>"] = { action = "select" },
        ["="] = { action = "visit" },
        ["g."] = { action = "toggle_ui", args = { "hidden_items" } },
        ["gi"] = { action = "toggle_ui", args = { "indent_guides" } },
        ["<leader>e"] = { action = "close" },
      },
    },
    ui = {
      hidden_items = {
        switches = {},
        patterns = {},
        always_visible = {},
        always_hidden = {},
      },
      indent_guides = true,
    },
  },
}

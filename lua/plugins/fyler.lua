return {
  "a7lavinraj/fyler.nvim",
  event = "VeryLazy",
  config = function()
    require("fyler").setup {
      hooks = {},
      integrations = {
        icon = "nvim_web_devicons",
      },
      views = {
        finder = {
          default_explorer = true,
          close_on_select = true,
          confirm_simple = false,
          delete_to_trash = true,
          git_status = {
            enabled = true,
            symbols = {
              Untracked = "UNTRACKED",
              Added = "ADDED",
              Modified = "MODIFIED",
              Deleted = "DELETED",
              Renamed = "RENAMED",
              Copied = "COPIED",
              Conflict = "CONFLICT",
              Ignored = "IGNORED",
            },
          },
          icon = {
            directory_collapsed = nil,
            directory_empty = nil,
            directory_expanded = nil,
          },
          indentscope = {
            enabled = true,
            group = "FylerIndentMarker",
            markers = "│",
          },
          mappings = {
            ["<leader>e"] = "CloseView",
            ["<CR>"] = "Select",
            ["<C-t>"] = "SelectTab",
            ["|"] = "SelectVSplit",
            ["-"] = "SelectSplit",
            ["^"] = "GotoParent",
            ["="] = "GotoCwd",
            ["."] = "GotoNode",
            ["#"] = "CollapseAll",
            ["<BS>"] = "CollapseNode",
          },
          mappings_opts = {
            nowait = false,
            noremap = true,
            silent = true,
          },
          follow_current_file = true,
          watcher = {
            enabled = false,
          },
          win = {
            border = "rounded",
            buf_opts = {
              filetype = "fyler",
              syntax = "fyler",
              buflisted = false,
              buftype = "acwrite",
              expandtab = true,
              shiftwidth = 2,
            },
            kind = "replace",
            kinds = {
              float = {
                height = "50%",
                width = "50%",
                top = "25%",
                left = "25%",
              },
              replace = {},
              split_above = {
                height = "50%",
              },
              split_above_all = {
                height = "50%",
                win_opts = {
                  winfixheight = true,
                },
              },
              split_below = {
                height = "50%",
              },
              split_below_all = {
                height = "50%",
                win_opts = {
                  winfixheight = true,
                },
              },
              split_left = {
                width = "25%",
              },
              split_left_most = {
                width = "25%",
                win_opts = {
                  winfixwidth = true,
                },
              },
              split_right = {
                width = "25%",
              },
              split_right_most = {
                width = "25%",
                win_opts = {
                  winfixwidth = true,
                },
              },
            },
            win_opts = {
              concealcursor = "nvic",
              conceallevel = 3,
              cursorline = false,
              number = false,
              relativenumber = false,
              winhighlight = "Normal:FylerNormal,NormalNC:FylerNormalNC",
              wrap = false,
              signcolumn = "no",
            },
          },
        },
      },
    }
  end,
}

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
          close_on_select = true,
          confirm_simple = false,
          default_explorer = false,
          delete_to_trash = false,
          columns_order = { "git" }, -- { "permission", "size", "git", "diagnostic" },
          columns = {
            git = {
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
            diagnostic = {
              enabled = true,
              symbols = {
                Error = "ERROR",
                Warn = "WORNING",
                Info = "INFO",
                Hint = "HINT",
              },
            },
            permission = {
              enabled = false,
            },
            size = {
              enabled = false,
            },
          },
          icon = {
            directory_empty = nil,
            directory_expanded = nil,
            directory_collapsed = nil,
          },
          indentscope = {
            enabled = true,
            markers = {
              { "│", "FylerIndentMarker" },
              { "└", "FylerIndentMarker" },
            },
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
            border = vim.o.winborder == "" and "single" or vim.o.winborder,
            buf_opts = {
              bufhidden = "hide",
              buflisted = false,
              buftype = "acwrite",
              expandtab = true,
              filetype = "fyler",
              shiftwidth = 2,
              syntax = "fyler",
              swapfile = false,
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
                width = "50%",
              },
              split_left_most = {
                width = "50%",
                win_opts = {
                  winfixwidth = true,
                },
              },
              split_right = {
                width = "50%",
              },
              split_right_most = {
                width = "50%",
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
              signcolumn = "no",
              winhighlight = "Normal:FylerNormal,NormalNC:FylerNormalNC",
              wrap = false,
            },
          },
        },
      },
    }
  end,
}

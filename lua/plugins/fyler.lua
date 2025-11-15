return {
  "a7lavinraj/fyler.nvim",
  event = "VeryLazy",
  config = function()
    require("fyler").setup {
      hooks = {
        on_delete = function(path)
          print("Deleted: " .. path)
        end,
        on_rename = function(src_path, dst_path)
          print("Renamed: " .. src_path .. " -> " .. dst_path)
        end,
      },
      integrations = {
        icon = "nvim_web_devicons",
      },
      views = {
        finder = {
          default_explorer = true,
          confirm_simple = false,
          close_on_select = true,
          delete_to_trash = true,
          follow_current_file = true,
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
          watcher = {
            enabled = true,
          },
          indentscope = {
            enabled = true,
            group = "FylerIndentMarker",
            marker = "│",
          },
          win = {
            border = "rounded",
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
              },
              split_below = {
                height = "50%",
              },
              split_below_all = {
                height = "50%",
              },
              split_left = {
                width = "25%",
              },
              split_left_most = {
                width = "25%",
              },
              split_right = {
                width = "25%",
              },
              split_right_most = {
                width = "25%",
              },
            },
          },
          win_opts = {
            concealcursor = "nvic",
            conceallevel = 3,
            cursorline = false,
            number = false,
            relativenumber = false,
            winhighlight = "Normal:FylerNormal",
            wrap = false,
          },
        },
      },
    }
  end,
}

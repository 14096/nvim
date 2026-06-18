return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  config = function()
    local status_ok, toggleterm = pcall(require, "toggleterm")
    if not status_ok then
      return
    end

    local sh = ""
    local os = vim.uv.os_uname().sysname

    if os == "Windows_NT" then
      sh = "pwsh"
    else
      sh = vim.o.shell
    end

    toggleterm.setup {
      size = 20,
      autochdir = true,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      persist_mode = false,
      direction = "float",
      close_on_exit = true,
      shell = sh,
      float_opts = {
        border = "curved",
      },
    }

    local function set_terminal_keymaps()
      local opts = { noremap = true, buffer = true }
      -- vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
      vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
      vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
      vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
    end

    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "term://*",
      callback = set_terminal_keymaps,
    })

    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new {
      cmd = "lazygit",
      dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "curved",
      },
      on_open = function(term)
        vim.cmd "startinsert!"
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
      on_close = function(term)
        vim.cmd "startinsert!"
      end,
    }

    _G.LazyGitToggle = function()
      lazygit:toggle()
    end
  end,
}

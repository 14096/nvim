vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf", "help", "man", "lspinfo", "spectre_panel" },
  callback = function()
    vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = true, silent = true })
    vim.opt_local.buflisted = false
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = false
  end,
})

vim.api.nvim_create_autocmd({ "VimResized" }, {
  callback = function()
    vim.cmd "tabdo wincmd ="
  end,
})

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.java" },
  callback = function()
    vim.lsp.codelens.refresh()
  end,
})

local restore_cursor_augroup = vim.api.nvim_create_augroup("restore_cursor_shape_on_exit", { clear = true })

vim.api.nvim_create_autocmd({ "VimLeave" }, {
  group = restore_cursor_augroup,
  desc = "restore the cursor shape on exit of neovim",
  command = "set guicursor=a:hor20",
})

-- vim.api.nvim_create_autocmd("CursorHold", {
-- callback = function()
-- vim.diagnostic.open_float(nil, { focusable = false, source = "if_many" })
-- end,
-- })

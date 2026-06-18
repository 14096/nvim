local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
  install = { colorscheme = { "nord" } },
  -- defaults = { lazy = true, version = "57cce98dfdb2f2dd05a0567d89811e6d0505e13b" },
  defaults = { lazy = true },
  ui = {
    wrap = true,
    border = "single",
  },
  change_detection = { enabled = true },
  debug = false,
  performance = {
    rtp = {
      disabled_plugins = {
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        "matchparen",
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "rrhelper",
        "spellfile_plugin",
        "tar",
        "tarPlugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
      },
    },
  },
})

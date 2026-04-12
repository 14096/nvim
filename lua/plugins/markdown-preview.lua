return {
  "iamcco/markdown-preview.nvim",
  ft = "markdown",
  build = ":call mkdp#util#install()",
  init = function()
    vim.g.mkdp_auto_close = 0
    vim.g.mkdp_combine_preview = 1
    vim.g.mkdp_combine_preview_auto_refresh = 1
  end,
}

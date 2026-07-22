return {
  "mason-org/mason.nvim",
  event = "VeryLazy",
  config = function()
    require("mason").setup {
      ui = {
        border = "single",
        icons = {
          package_installed = "◍",
          package_pending = "◍",
          package_uninstalled = "◍",
        },
      },
      log_level = vim.log.levels.INFO,
      max_concurrent_installers = 4,
      ensure_installed = {
        "beautysh",
        "clang-format",
        "csharpier",
        "gofumpt",
        "jq",
        "ormolu",
        "prettier",
        "stylua",
      },
    }
  end,
}

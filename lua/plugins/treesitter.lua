return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require "nvim-treesitter"
    local parsers = {
      "angular",
      "astro",
      "bash",
      "c",
      "cmake",
      "cpp",
      "c_sharp",
      "css",
      "csv",
      "dockerfile",
      "dot",
      "elixir",
      "erlang",
      "fsharp",
      "func",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitignore",
      "go",
      "gomod",
      "gosum",
      "gpg",
      "haskell",
      "html",
      "http",
      "java",
      "javascript",
      "jq",
      "jsdoc",
      "json",
      "jsx",
      "kotlin",
      "kusto",
      "latex",
      "lua",
      "luadoc",
      "make",
      "markdown",
      "ocaml",
      "powershell",
      "python",
      "regex",
      "ruby",
      "rust",
      "scala",
      "scss",
      "sql",
      "svelte",
      "toml",
      "tsx",
      "typescript",
      "typespec",
      "vim",
      "vimdoc",
      "vue",
      "xml",
      "yaml",
      "zig",
      "zsh",
    }

    vim.schedule(function()
      for _, parser in ipairs(parsers) do
        ts.install(parser)
      end
    end)

    vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.wo[0][0].foldmethod = "expr"
    vim.api.nvim_command "set nofoldenable"

    vim.api.nvim_create_autocmd("FileType", {
      pattern = vim.iter({ parsers, { "typescriptreact", "javascriptreact" } }):flatten():totable(),
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}

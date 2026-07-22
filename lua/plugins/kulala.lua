return {
  "mistweaverco/kulala.nvim",
  opts = {
    kulala_core = {
      path = nil,
      timeout = nil,
      data_dir = nil,
    },
    default_env = "default",
    vscode_rest_client_environmentvars = false,
    halt_on_error = true,
    contenttypes = {
      ["application/json"] = {
        ft = "json",
        formatter = vim.fn.executable "jq" == 1 and { "jq", "." },
        pathresolver = function(...)
          return require("kulala.parser.jsonpath").parse(...)
        end,
      },
      ["application/xml"] = {
        ft = "xml",
        formatter = vim.fn.executable "xmllint" == 1 and { "xmllint", "--format", "-" },
        pathresolver = vim.fn.executable "xmllint" == 1 and { "xmllint", "--xpath", "{{path}}", "-" },
      },
      ["text/html"] = {
        ft = "html",
        formatter = vim.fn.executable "prettier" == 1 and { "prettier", "--stdin-filepath", "file.html" },
        pathresolver = nil,
      },
      ["application/lua"] = {
        ft = "lua",
        formatter = vim.fn.executable "stylua" == 1 and { "stylua", "-" },
        pathresolver = nil,
      },
    },
    ui = {
      display_mode = "float",
      split_direction = "vertical",
      default_view = "body",
      winbar = false,
      show_request_summary = true,
      show_icons = "on_request",
      icons = {
        inlay = {
          loading = "󰔚",
          done = "",
          error = "",
        },
        lualine = "🐼",
      },
      report = {
        show_script_output = true,
        show_asserts_output = true,
        show_summary = true,
      },
    },
    lsp = {
      enable = true,
      filetypes = { "http", "rest", "json", "yaml", "bruno" },
      keymaps = false,
      formatter = {},
      on_attach = nil,
    },
    debug = 3,
    generate_bug_report = false,
    global_keymaps = false,
    global_keymaps_prefix = "<leader>R",
    kulala_keymaps = true,
    kulala_keymaps_prefix = "",
  },
}

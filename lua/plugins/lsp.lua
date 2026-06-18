return {
  "neovim/nvim-lspconfig",
  lazy = true,
  dependencies = {
    {
      "hrsh7th/cmp-nvim-lsp",
    },
  },
  config = function()
    local cmp_nvim_lsp = require "cmp_nvim_lsp"

    vim.lsp.config("*", {
      capabilities = cmp_nvim_lsp.default_capabilities(),
    })

    vim.lsp.config("denols", {
      root_dir = function(fname)
        return vim.fs.root(fname, { "deno.json", "deno.jsonc" })
      end,
    })

    vim.lsp.config("omnisharp", {
      settings = {
        formattingOptions = {
          enableEditorConfigSupport = true,
          indentationSize = 2,
          insertSpaces = true,
          organizeImports = true,
          tabSize = 2,
          useTabs = false,
        },
      },
    })

    local ps_bundle = vim.fn.stdpath "data" .. "/mason/packages/powershell-editor-services"
    local ps_cache = vim.fn.stdpath "cache"
    vim.lsp.config("powershell_es", {
      filetypes = { "ps1" },
      cmd = {
        "pwsh",
        "-NoLogo",
        "-Command",
        (
          "& '%s/PowerShellEditorServices/Start-EditorServices.ps1'"
          .. " -BundledModulesPath '%s'"
          .. " -LogPath '%s/powershell_es.log'"
          .. " -SessionDetailsPath '%s/powershell_es.session.json'"
          .. " -FeatureFlags @() -AdditionalModules @()"
          .. " -HostName nvim -HostProfileId 0 -HostVersion 1.0.0"
          .. " -Stdio -LogLevel Normal"
        ):format(ps_bundle, ps_bundle, ps_cache, ps_cache),
      },
    })

    local x = vim.diagnostic.severity
    vim.diagnostic.config {
      signs = {
        text = {
          [x.ERROR] = "E",
          [x.WARN] = "W",
          [x.INFO] = "I",
          [x.HINT] = "H",
        },
      },
      virtual_text = false,
      update_in_insert = true,
      underline = false,
      severity_sort = true,
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
        suffix = "",
      },
    }

    local function with_border(handler)
      return function(err, result, ctx, conf)
        conf = vim.tbl_deep_extend("force", conf or {}, { border = "rounded" })
        handler(err, result, ctx, conf)
      end
    end

    vim.lsp.handlers["textDocument/hover"] = with_border(vim.lsp.handlers.hover)
    vim.lsp.handlers["textDocument/signatureHelp"] = with_border(vim.lsp.handlers.signature_help)
  end,
}

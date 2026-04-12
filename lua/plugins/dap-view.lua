return {
  "igorlfs/nvim-dap-view",
  event = "VeryLazy",
  version = "1.*",
  opts = {
    winbar = {
      show = true,
      sections = { "scopes", "watches", "breakpoints", "repl" },
      default_section = "scopes",
      show_keymap_hints = true,
      base_sections = {
        breakpoints = { label = "Breakpoints", keymap = "B" },
        scopes = { label = "Scopes", keymap = "S" },
        watches = { label = "Watches", keymap = "W" },
        repl = { label = "REPL", keymap = "R" },
        -- exceptions = { label = "Exceptions", keymap = "E" },
        -- threads = { label = "Threads", keymap = "T" },
        -- sessions = { label = "Sessions", keymap = "K" },
        -- console = { label = "Console", keymap = "C" },
      },
      custom_sections = {},
      controls = {
        enabled = true,
        position = "right",
        buttons = {
          "play",
          "step_into",
          "step_over",
          "step_out",
          "step_back",
          "run_last",
          "terminate",
          "disconnect",
        },
        custom_buttons = {},
      },
    },
    windows = {
      size = 0.25,
      position = "below",
      terminal = {
        size = 0.5,
        position = "left",
        hide = {},
      },
    },
    icons = {
      collapsed = "󰅂 ",
      disabled = "",
      disconnect = "",
      enabled = "",
      expanded = "󰅀 ",
      filter = "󰈲",
      negate = " ",
      pause = "",
      play = "",
      run_last = "",
      step_back = "",
      step_into = "",
      step_out = "",
      step_over = "",
      terminate = "",
    },
    help = {
      border = nil,
    },
    render = {
      sort_variables = nil,
      threads = {
        format = function(name, lnum, path)
          return {
            { part = name, separator = " " },
            { part = path, hl = "FileName", separator = ":" },
            { part = lnum, hl = "LineNumber" },
          }
        end,
        align = false,
      },
      breakpoints = {
        format = function(line, lnum, path)
          return {
            { part = path, hl = "FileName" },
            { part = lnum, hl = "LineNumber" },
            { part = line, hl = true },
          }
        end,
        align = false,
      },
    },
    virtual_text = {
      enabled = true,
      format = function(variable, _, _)
        return " " .. variable.value:gsub("%s+", " ")
      end,
    },
    switchbuf = "usetab,uselast",
    auto_toggle = false,
    follow_tab = false,
  },
}

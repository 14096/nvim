return {
  "chrisgrieser/nvim-chainsaw",
  event = "VeryLazy",
  opts = {},
  config = function()
    require("chainsaw").setup {
      marker = "",
      visuals = {
        icon = "", ---@type string|false
        signHlgroup = "DiagnosticSignInfo", ---@type string|false
        signPriority = 50,
        lineHlgroup = false, ---@type string|false
        nvimSatelliteIntegration = {
          enabled = true,
          hlgroup = "DiagnosticSignInfo",
          icon = "▪",
          leftOfScrollbar = false,
          priority = 40,
        },
      },
      preCommitHook = {
        enabled = false,
        notifyOnInstall = true,
        hookPath = ".chainsaw",
        hookContent = [[#!/bin/sh
			if git grep --fixed-strings --line-number "%s" .; then
				echo
				echo "nvim-chainsaw marker found. Aborting commit."
				exit 1
			fi
		]],
        notInNvimConfigDir = true,
        dontInstallInDirs = {},
      },
      logTypes = {
        emojiLog = {
          emojis = { "🔵", "🟩", "⭐", "⭕", "💜", "🔲" },
        },
      },
      logStatements = require("chainsaw.config.log-statements-data").logStatements,
      supersets = require("chainsaw.config.log-statements-data").supersets,
    }
  end,
}

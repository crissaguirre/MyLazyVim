return {
  {
    "nvim-flutter/flutter-tools.nvim",
    ft = "dart",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      ui = {
        border = "rounded",
      },
      decorations = {
        statusline = true,
      },
      debugger = { enabled = true },
      lsp = {
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          analysisExcludedFolders = {
            vim.fn.expand("$HOME/.pub-cache"),
          },
        },
      },
      dev_log = {
        enabled = true,
        open_cmd = "tabedit",
      },
      widget_guides = { enabled = true },
    },
    -- ==================== KEYMAPS FLUTTER (solo en buffers dart) ====================
    keys = {
      { "<leader>rf", "", desc = "+flutter", ft = "dart" },
      { "<leader>rfr", "<cmd>FlutterRun<cr>", desc = "Run", ft = "dart" },
      { "<leader>rfh", "<cmd>FlutterHotReload<cr>", desc = "Hot Reload", ft = "dart" },
      { "<leader>rfR", "<cmd>FlutterHotRestart<cr>", desc = "Hot Restart", ft = "dart" },
      { "<leader>rfd", "<cmd>FlutterDevices<cr>", desc = "Devices", ft = "dart" },
      { "<leader>rfe", "<cmd>FlutterEmulators<cr>", desc = "Emulators", ft = "dart" },
      { "<leader>rfl", "<cmd>FlutterLogClear<cr>", desc = "Clear Log", ft = "dart" },
      { "<leader>rfq", "<cmd>FlutterQuit<cr>", desc = "Quit", ft = "dart" },
      { "<leader>rfo", "<cmd>FlutterOutline<cr>", desc = "Outline", ft = "dart" },
      { "<leader>rft", "<cmd>FlutterDevTools<cr>", desc = "DevTools", ft = "dart" },
      { "<leader>rfa", "<cmd>FlutterAttach<cr>", desc = "Attach", ft = "dart" },
      { "<leader>rfP", "<cmd>FlutterPubGet<cr>", desc = "Pub Get", ft = "dart" },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "dart" })
    end,
  },
}

return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("flutter-tools").setup({
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
      })
      -- ==================== KEYMAPS CON "F" ====================
      local opts = { noremap = true, silent = true }
      local keymap = vim.keymap.set

      -- Flutter
      keymap("n", "<leader>rfr", ":FlutterRun<CR>", opts)
      keymap("n", "<leader>rfh", ":FlutterHotReload<CR>", opts)
      keymap("n", "<leader>rfR", ":FlutterHotRestart<CR>", opts)
      keymap("n", "<leader>rfd", ":FlutterDevices<CR>", opts)
      keymap("n", "<leader>rfe", ":FlutterEmulators<CR>", opts)
      keymap("n", "<leader>rfl", ":FlutterLogClear<CR>", opts)
      keymap("n", "<leader>rfq", ":FlutterQuit<CR>", opts)
      keymap("n", "<leader>rfo", ":FlutterOutline<CR>", opts)
      keymap("n", "<leader>rft", ":FlutterDevTools<CR>", opts)
      keymap("n", "<leader>rfa", ":FlutterAttach<CR>", opts)
      keymap("n", "<leader>rfP", ":FlutterPubGet<CR>", opts)
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "dart" })
    end,
  },
}

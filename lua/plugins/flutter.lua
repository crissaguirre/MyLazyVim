return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- para ventanas bonitas
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
          color = { enabled = true }, -- colorea widgets
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
          },
        },
        dev_log = {
          enabled = true,
          open_cmd = "tabedit", -- abre el log en una nueva pestaña
        },
        widget_guides = { enabled = true },
      })
    end,
  },

  -- Mejor syntax highlighting para Dart
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "dart" })
    end,
  },
}

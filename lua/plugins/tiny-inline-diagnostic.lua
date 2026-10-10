return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = {
      preset = "modern",
      options = {
        show_source = true,
        throttle = 0,
        softwrap = 30,
        multiple_diag_under_cursor = true,
        multilines = true,
        show_all_diags_on_cursorline = true,
        enable_on_insert = false,
        overflow = {
          mode = "wrap",
        },
      },
    },
  },
  -- Desactivar el virtual_text nativo desde LazyVim (tiny-inline-diagnostic lo reemplaza)
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
        virtual_lines = false,
      },
    },
  },
}

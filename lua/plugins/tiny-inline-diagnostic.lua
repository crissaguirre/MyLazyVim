return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("tiny-inline-diagnostic").setup({
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
    })
    vim.diagnostic.config({
      virtual_text = false,
      virtual_lines = false,
      signs = true,
    })
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function()
        vim.diagnostic.config({
          virtual_text = false,
          virtual_lines = false,
        })
      end,
    })
  end,
}

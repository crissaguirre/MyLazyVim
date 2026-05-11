return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
        color = {
          suggestion_color = "#c4a5ff", -- ← Cambia este color (gris claro recomendado)
          cterm = 244, -- Color para terminales (opcional)
        },
      })
    end,
  },
}

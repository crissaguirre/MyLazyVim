return {
  {
    "olimorris/codecompanion.nvim",
    -- Se carga solo al usar alguno de sus comandos
    cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions", "CodeCompanionCmd" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("config.codecompanion")
    end,
  },
}

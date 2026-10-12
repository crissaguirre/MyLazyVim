require("codecompanion").setup({
  adapters = {
    http = {
      openrouter = function()
        return require("codecompanion.adapters").extend("openai_compatible", {
          name = "openrouter",
          url = "https://openrouter.ai/api/v1/chat/completions",
          env = {
            api_key = os.getenv("OPENROUTER_API_KEY"),
          },
          headers = {
            ["HTTP-Referer"] = "https://neovim.org",
            ["X-Title"] = "Neovim CodeCompanion",
          },
          schema = {
            model = {
              default = "apodex/apodex-1.1-mini:free",
              choices = {
                "apodex/apodex-1.1-mini:free",
              },
            },
            max_tokens = { default = 2000 },
          },
        })
      end,
    },
  },

  strategies = {
    chat = { adapter = "openrouter" },
    inline = { adapter = "openrouter" },
    cmd = { adapter = "openrouter" },
  },

  opts = {
    log_level = "ERROR",
  },
})

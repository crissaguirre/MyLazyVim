require("codecompanion").setup({
  adapters = {
    openrouter = function()
      return require("codecompanion.adapters").extend("openai", {
        name = "openrouter",
        url = "https://openrouter.ai/api/v1/chat/completions",
        env = {
          api_key = os.getenv("OPENROUTER_API_KEY"),
        },
        headers = {
          ["HTTP-Referer"] = "https://neovim.org",
        },
        schema = {
          model = {
            default = "nvidia/nemotron-nano-9b-v2:free",
            choices = {
              "deepseek/deepseek-chat-v3.1:free",
              "nvidia/nemotron-nano-9b-v2:free",
              "openai/gpt-oss-20b:free",
            },
          },
          max_tokens = {
            default = 2000,
          },
        },
      })
    end,
  },
  strategies = {
    chat = {
      adapter = "openrouter",
      -- model = "deepseek/deepseek-chat-v3.1:free",
    },
    inline = {
      adapter = "openrouter",
      -- model = "deepseek/deepseek-chat-v3.1:free",
    },
    cmd = {
      adapter = "openrouter",
      -- model = "deepseek/deepseek-chat-v3.1:free",
    },
  },
  opts = {
    log_level = "DEBUG",
  },
})

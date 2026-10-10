return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      json = { "jq" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      sql = { "sqlfluff" },
      java = { "google-java-format" },
      sh = { "shfmt" },
      python = { "ruff_format" },
    },
  },
}

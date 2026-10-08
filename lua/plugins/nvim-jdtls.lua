-- return {
--   {
--     "mfussenegger/nvim-jdtls",
--     opts = {
--       settings = {
--         java = {
--           format = {
--             settings = {
--               profile = "Criss",
--               url = "file:///home/criss/formatter_test.xml",
--             },
--             enabled = false,
--           },
--         },
--       },
--     },
--     -- config = function(_, opts)
--     --     		require("jdtls").start_or_attach(opts)  -- Inicia jdtls con la configuración
--     -- end,
--   },
-- }

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

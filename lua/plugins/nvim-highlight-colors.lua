return {
  "brenoprata10/nvim-highlight-colors",
  event = "LazyFile",
  config = function()
    require("nvim-highlight-colors").setup({
      render = "virtual", -- Opción: "background", "foreground", "virtual"
      enable_named_colors = true,
      enable_tailwind = true, -- Si usas TailwindCSS
    })
  end,
}

-- Integración con Claude Code (usa el mismo binario y cuenta que `claude` en la terminal).
-- Atajos del extra de LazyVim: <leader>ac toggle, <leader>as enviar selección,
-- <leader>ab añadir buffer, <leader>aa / <leader>ad aceptar / rechazar diff.
local claude_bin = vim.fn.exepath("claude")

return {
  {
    "coder/claudecode.nvim",
    -- Si `claude` no está instalado, el plugin no se carga y nvim sigue funcionando normal
    cond = claude_bin ~= "",
    opts = {
      terminal_cmd = claude_bin,
      terminal = {
        split_side = "right",
        split_width_percentage = 0.35,
      },
    },
  },
}

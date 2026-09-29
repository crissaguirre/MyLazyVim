-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.wrap = true -- Habilita salto de línea
vim.opt.linebreak = true -- Evita cortar palabras a la mitad
vim.opt.breakindent = true -- Mantiene indentación visual en la nueva línea

-- vim.opt.tabstop = 4 -- Ancho visual de un tab
-- vim.opt.shiftwidth = 4 -- Espacios para indentación automática
-- vim.opt.expandtab = true -- Convertir tabs en espacios
-- vim.opt.softtabstop = 4 -- Espacios al presionar <Tab>
-- vim.opt.smartindent = true
-- vim.opt.autoindent = true
vim.g.autoformat = false
vim.opt.clipboard = "unnamedplus"

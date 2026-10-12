-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>rs", function()
  -- Verificar que estamos en un proyecto Maven
  if vim.fn.filereadable("pom.xml") == 0 then
    vim.notify("❌ No se encontró pom.xml en el directorio actual", vim.log.levels.ERROR)
    return
  end

  if (vim.env.SONAR_TOKEN or "") == "" then
    vim.notify("❌ La variable SONAR_TOKEN no está definida", vim.log.levels.ERROR)
    vim.notify("💡 Ejecuta: export SONAR_TOKEN='tu_token' en tu terminal", vim.log.levels.INFO)
    return
  end

  -- El token NO va en la línea de comandos (se vería en `ps` y en el historial):
  -- el scanner de Sonar lo lee directamente de la variable de entorno SONAR_TOKEN,
  -- que el proceso de mvn hereda de nvim.
  Snacks.terminal("mvn clean verify sonar:sonar -Dsonar.host.url=http://localhost:9000", {
    interactive = false, -- la ventana queda abierta al terminar para revisar la salida
    win = { position = "float", border = "rounded" },
  })

  vim.notify("🚀 Ejecutando análisis SonarQube...", vim.log.levels.INFO)
end, {
  desc = "Run Sonar analysis",
})

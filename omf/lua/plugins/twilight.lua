return {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup({
      -- Aquí puedes configurar Twilight si necesitas opciones personalizadas
    })
    vim.cmd("TwilightEnable") -- Activa Twilight al inicio
  end,
}

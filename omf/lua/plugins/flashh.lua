return {
  {
    "folke/flash.nvim",
    opts = function(_, opts)
      -- Modifica las teclas predeterminadas
      opts.modes = {
        search = {
          enabled = true,
          keys = {
            -- Remapea las teclas para moverte entre coincidencias
            next = "n", -- Remapea para ir al siguiente
            prev = "N", -- Remapea para ir al anterior
            jump = "<Enter>", -- Remapea para saltar a la coincidencia seleccionada
          },
        },
      }
    end,
  },
}

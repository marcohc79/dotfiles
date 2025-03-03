return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = false, -- Deshabilitamos el atajo por defecto (<C-\>)
        direction = "float", -- Dirección por defecto
        close_on_exit = true,
        float_opts = {
          border = "rounded", -- Puedes usar: single, double, shadow, curved
          width = function()
            return math.floor(vim.o.columns * 0.8)
          end,
          height = function()
            return math.floor(vim.o.lines * 0.8)
          end,
          winblend = 15, -- Transparencia (0-100)
        },
        -- Configuración para terminales normales (no flotantes)
        shade_terminals = false,
        start_in_insert = true,
      })

      -- Atajos personalizados
      local Terminal = require("toggleterm.terminal").Terminal

      -- Terminal flotante principal
      local float_term = Terminal:new({
        direction = "float",
        hidden = true,
        on_open = function(term)
          vim.cmd("startinsert!")
        end,
      })

      -- Keymaps
      vim.keymap.set("n", "<leader>tf", function()
        float_term:toggle()
      end, { desc = "Toggle floating terminal" })

      -- Terminal horizontal (abajo)
      vim.keymap.set(
        "n",
        "<leader>th",
        "<cmd>ToggleTerm direction=horizontal<cr>",
        { desc = "Toggle horizontal terminal" }
      )

      -- Salir del modo terminal con ESC
      vim.api.nvim_create_autocmd("TermEnter", {
        pattern = "toggleterm",
        callback = function()
          vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]], { buffer = true })
        end,
      })
    end,
  },
}

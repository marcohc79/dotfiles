return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neotest/neotest-python",
      "nvim-neotest/nvim-nio", -- Agregar esta línea
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            args = { "--verbose" },
            runner = "pytest",
            python = ".venv/bin/python", -- Opcional (ajusta a tu venv
          }),
        },
      })
      local map = vim.keymap.set
      map("n", "<leader>tt", function()
        require("neotest").run.run()
      end, { desc = "Test: Ejecutar test bajo cursor" })
      map("n", "<leader>tc", function()
        require("neotest").run.run(vim.fn.expand("%"))
      end, { desc = "Test: Ejecutar archivo" })
      map("n", "<leader>ts", function()
        require("neotest").summary.toggle()
      end, { desc = "Test: Resumen de pruebas" })
      map("n", "<leader>to", function()
        require("neotest").output.open()
      end, { desc = "Test: Ver output completo" })
    end,
  },
}

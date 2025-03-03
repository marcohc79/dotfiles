return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local function venv()
        local env = os.getenv("VIRTUAL_ENV")
        if env then
          local venv_name = env:match(".*/(.*)")
          return string.format(" %s", venv_name)
        end
        return ""
      end

      -- Añadir el componente al final de section_c
      table.insert(opts.sections.lualine_c, {
        venv,
        color = { fg = "#a6e3a1" },
      })
    end,
  },
}

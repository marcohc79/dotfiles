return {
  "derektata/lorem.nvim",
  config = function()
    require("lorem").opts({
      sentenceLength = "mixed",
      comma_chance = 0.2,
      max_commas_per_sentence = 2,
      language = "en", -- en/es/fr/de/la (soporte multi-idioma)
      startWithLorem = true, -- Siempre inicia con "Lorem ipsum..."
      addPeriod = true, -- Agrega punto al final
      wrap = 80, -- Longitud máxima de línea (0 para desactivar)
      placeholder = "!!LOREM!!", -- Marcador personalizado para snippets
    })

    -- Atajos clave personalizados
    vim.keymap.set("n", "<leader>lw", ":LoremIpsum words 500<CR>", { desc = "Generar 500 palabras" })
    vim.keymap.set("n", "<leader>lp", ":LoremIpsum paragraphs 2<CR>", { desc = "Generar 2 párrafos" })
  end,
}

local f = require("utils.file").is_pkg_dir

return {
  "nvim-java/nvim-java",
  dependencies = {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {
          handlers = {
            ["$/progress"] = function() end,
          },
          capabilities = vim.lsp.protocol.make_client_capabilities(),
        },
      },
      setup = {
        jdtls = function()
          require("java").setup({
            jdk = {
              auto_install = false,
            },
            notifications = {
              dap = false,
            },
          })
        end,
      },
    },
  },
}

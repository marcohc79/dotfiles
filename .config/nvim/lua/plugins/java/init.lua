local f = require("utils.file").is_pkg_dir

return {
  "nvim-java/nvim-java",
  "microsoft/vscode-java-test",
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
            root_markers = {
              "settings.gradle",
              "settings.gradle.kts",
              "pom.xml",
              "build.gradle",
              "mvnw",
              "gradlew",
              "build.gradle",
              "build.gradle.kts",
            },
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

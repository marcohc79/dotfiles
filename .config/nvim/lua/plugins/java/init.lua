return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "microsoft/vscode-java-test",
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          jdtls = {
            settings = {
              java = {
                configuration = {
                  runtimes = {
                    {
                      name = "Java-21",
                      path = "/usr/bin/java",
                      default = true,
                    },
                  },
                },
              },
            },
          },
        },
        setup = {
          jdtls = function()
            -- Derivar dinámicamente el nombre del proyecto desde el directorio actual
            local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

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
              -- Configuración con el nombre dinámico del proyecto
              project_name = project_name,

              spring_boot_tools = {
                enable = true,
              },

              -- Instalación automática del JDK usando mason.nvim
              jdk = {
                auto_install = false,
              },

              -- Configuración de notificaciones, incluyendo las de DAP
              notifications = {
                dap = true,
              },

              -- Verificaciones de configuración para asegurar la ejecución correcta
              verification = {
                invalid_order = true,
                duplicate_setup_calls = true,
                invalid_mason_registry = true,
              },
            })
          end,
        },
      },
    },
  },
}

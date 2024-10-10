return {
    "nvim-java/nvim-java",
    config = false,
    dependencies = {
        "MunifTanjim/nui.nvim",
        "mfussenegger/nvim-dap",
        {
            "williamboman/mason.nvim",
            opts = {
                registries = {
                    "github:nvim-java/mason-registry",
                    "github:mason-org/mason-registry",
                },
            },
        },
        {
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
                            -- Archivos que marcan la raíz del proyecto
                            root_markers = {
                                "settings.gradle",
                                "settings.gradle.kts",
                                "pom.xml",
                                "build.gradle",
                                "mvnw",
                                "gradlew",
                                "build.gradle",
                                "build.gradle.kts",
                                ".git",
                            },
                            project_name_fallback = "DefaultJavaProject",
                            -- Carga de plugins para pruebas en Java
                            java_test = {
                                enable = true,
                            },

                            -- Carga de plugins para el depurador de Java
                            java_debug_adapter = {
                                enable = true,
                            },

                            -- Soporte para herramientas de Spring Boot
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

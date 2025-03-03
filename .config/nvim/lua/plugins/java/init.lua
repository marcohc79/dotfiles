return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          -- Your JDTLS configuration goes here
          -- jdtls = {
          --   settings = {
          --     java = {
          --       configuration = {
          --         runtimes = {
          --           {
          --             name = "JavaSE-23",
          --             path = "/usr/lib/jvm/java-23-openjdk-23.0.0.0.37-1.rolling.fc41.x86_64",
          --           },
          --         },
          --       },
          --     },
          --   },
          -- },
        },
        setup = {
          jdtls = function()
            -- Your nvim-java configuration goes here
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
            })
          end,
        },
      },
    },
  },
}

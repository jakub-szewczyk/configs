local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "bash",
        "markdown",
        "gitignore",
        "dockerfile",
        "sql",
        "prisma",
        "html",
        "xml",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "yaml",
        "graphql",
        "haskell",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "vim-language-server",
        "lua-language-server",
        "luaformatter",
        "stylua",
        "shellcheck",
        "bash-language-server",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "nginx-language-server",
        "sql-formatter",
        "prismals",
        "prisma-language-server",
        "emmet-ls",
        "emmet_language_server",
        "html-lsp",
        "xmlformatter",
        "css-lsp",
        "cssmodules-language-server",
        "tailwindcss-language-server",
        "stylelin_lsp",
        "typescript-language-server",
        "json-lsp",
        "yamllint",
        "yaml-language-server",
        "prettier",
        "eslint-lsp",
        "haskell-language-server",
        "cspell",
      },
    },
    {
      "neovim/nvim-lspconfig",
      dependencies = {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
      end,
    },
  },
}

return plugins

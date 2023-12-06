local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "lua_ls",
  "bashls",
  "dockerls",
  "docker_compose_language_service",
  "nginx_language_server",
  "sqlls",
  "postgres_lsp",
  "prismals",
  "emmet_ls",
  "emmet_language_server",
  "html",
  "cssls",
  "cssmodules_ls",
  "tailwindcss",
  "stylelint_lsp",
  "tsserver",
  "jsonls",
  "yamlls",
  "eslint",
  "graphql",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Without the loop, you would have to manually set up each LSP
--
-- lspconfig.html.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
--
-- lspconfig.cssls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }

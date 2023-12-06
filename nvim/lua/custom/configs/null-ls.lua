local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {
  formatting.stylua,

  code_actions.gitsigns,

  formatting.sqlfmt,

  formatting.prismaFmt,

  formatting.prettier,

  formatting.eslint,
  lint.eslint,
  code_actions.eslint,

  lint.markdownlint,

  lint.stylelint,

  lint.jsonlint,

  lint.yamllint,

  formatting.stylish_haskell,

  lint.cspell,
  code_actions.cspell,
}

null_ls.setup {
  debug = true,
  sources = sources,
  -- you can reuse a shared lspconfig on_attach callback here
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
          vim.lsp.buf.format { async = false }
        end,
      })
    end
  end,
}

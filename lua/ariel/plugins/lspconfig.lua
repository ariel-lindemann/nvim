return {
  "neovim/nvim-lspconfig",

  config = function()
    local lspconfig = require('lspconfig')
    lspconfig.clangd.setup({
      name = 'clangd',
      cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
      initialization_options = {
        fallback_flags = { '-std=c++17' },
      },
      on_attach = function(client, bufnr)
        -- Formatting on save
        vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format({async = true})]]
      end
    })
  end
}

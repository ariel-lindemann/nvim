return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        local lspconfig = require("lspconfig")
        if lspconfig[server_name] then
          ---@diagnostic disable-next-line: undefined-field
          lspconfig[server_name].setup({})
        else
          print("LSP server configuration not found for: " .. server_name)
        end
      end,
    })
  end,
}

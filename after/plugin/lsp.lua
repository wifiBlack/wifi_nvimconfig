local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- 设定默认 LSP 快捷键
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'pyright', 'lua_ls', "marksman", "jdtls"},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})


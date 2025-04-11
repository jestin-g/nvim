local lspconfig = require('lspconfig')

lspconfig.angularls.setup({
    on_attach = function(client, bufnr)
        print("Angular LSP connecté!")
    end,
})

return {}

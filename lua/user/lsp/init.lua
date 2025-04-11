-- Load Mason first (package manager for LSP)
require("user.lsp.mason")

-- Load individual LSP configs
require("user.lsp.lua_ls")
require("user.lsp.ts_ls")
require("user.lsp.eslint")
require("user.lsp.angular")

-- LSP Attach Event for Key Mappings
vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
                -- Buffer local mappings
                local opts = {
                        buffer = ev.buf,
                        noremap = true,
                        silent = true
                }
                -- Create extended options with descriptions
                local function with_desc(desc)
                        return vim.tbl_extend("force", opts, { desc = desc })
                end

                -- Set keymaps with descriptions
                vim.keymap.set('n', '<leader>lg', vim.lsp.buf.definition, with_desc('Go to definition'))
                vim.keymap.set('n', '<leader>lu', vim.lsp.buf.references, with_desc('Find references/usages'))
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, with_desc('Show hover documentation'))
                vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, with_desc('Rename symbol'))
                vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, with_desc('Code action'))
        end,
})

return {}

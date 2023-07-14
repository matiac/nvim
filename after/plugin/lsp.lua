local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    'astro',
    'eslint',
    'html',
    'jsonls',
    'lua_ls',
    'intelephense',
    'rust_analyzer',
    'tailwindcss',
    'tsserver'
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

--[[
vim.diagnostic.config({
  virtual_text = false
})
--]]

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})

    vim.api.nvim_create_autocmd("CursorHold", {
        buffer = bufnr,
        callback = function()
            local opts = {
                focusable = false,
                close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
                border = 'rounded',
                source = 'always',
                prefix = ' ',
                scope = 'cursor',
            }
            vim.diagnostic.open_float(nil, opts)
        end
    })
end)

lsp.setup()


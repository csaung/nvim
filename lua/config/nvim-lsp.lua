local lspInstallerOk, lspInstaller = pcall(require, 'nvim-lsp-installer')
if not lspInstallerOk then
    print('lsp-installer failed to load\n')
    return
end
lspInstaller.setup()

-- additional capabilities supported by nvim-cmp
local cmpLspOk, cmpLsp = pcall(require, 'cmp_nvim_lsp')
if not cmpLspOk then
    print('cmp-nvim-lsp failed to load\n')
    return
end
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmpLsp.default_capabilities(capabilities)

local lspConfigOk, lspConfig = pcall(require, 'lspconfig')
if not lspConfigOk then
    print('lspconfig failed to load\n')
    return
end

-- settings rendered when lsp is attached
local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true }

    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'td', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

    vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

    vim.diagnostic.config({ virtual_text = false, })
end

local servers = { 'rust_analyzer', 'pyright', 'sumneko_lua', 'clangd', 'tsserver', 'svls'}
local settings = {}
settings['sumneko_lua'] = {
    Lua = {
        diagnostics = {
            globals = { 'vim', 'use' }
        },
    }
}

-- set up lsp servers
for _, lsp in ipairs(servers) do
    lspConfig[lsp].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        settings = settings[lsp],
    }
end

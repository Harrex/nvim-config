vim.lsp.config('*', {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = { version = 'LuaJIT' },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
        },
    },
})

vim.lsp.config('emmet_ls', {
    filetypes = {
        'html', 'css', 'jsx', 'javascriptreact',
        'tsx', 'typescriptreact', 'javascript',
    },
})

vim.lsp.enable({
    'lua_ls', 'pyright', 'rust_analyzer', 'cssls',
    'clangd', 'emmet_ls', 'vtsls', 'texlab',
})

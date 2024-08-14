local lsp = require('lsp-zero').preset({})

local root_dir = function(fname)
    require('lspconfig.util').find_git_ancestor(fname)
end

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)


lsp.setup()

require('lspconfig.ui.windows').default_options.border = 'single'

local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup {}

lspconfig.hls.setup {
    on_attach = on_attach,
    settings = {
        haskell = {
            hlintOn = true,
            formattingProvider = "fourmolu"
        }
    }
}

lspconfig.dafny.setup {
    cmd = { "dafny", "server" },
    filetypes = { "dfy", "dafny" },
    root_dir = root_dir,
    on_attach = on_attach, 
    single_file_support = true,
}

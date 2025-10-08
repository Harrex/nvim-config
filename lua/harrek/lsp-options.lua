-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lspconfig_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }
    end,
})

local lspconfig = require("lspconfig")
require("neodev").setup()
lspconfig.lua_ls.setup {}
lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.cssls.setup {}
lspconfig.emmet_ls.setup {}
lspconfig.texlab.setup {}

-- lspconfig.asm_lsp.setup {
--     settings = {
--         command = "asm-lsp",
--         filetypes = {
--             "asm", "s", "S"
--         }
--     }
-- }

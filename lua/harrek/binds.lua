vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>n', "<cmd>NvimTreeToggle<cr>")
vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeFocus<cr>")

-- Directional keys for Dvorak Layout
vim.keymap.set('n', 'h', "h")
vim.keymap.set('n', 't', "k")
vim.keymap.set('n', 'n', "j")
vim.keymap.set('n', 's', "l")

vim.keymap.set('v', 'h', "h")
vim.keymap.set('v', 't', "k")
vim.keymap.set('v', 'n', "j")
vim.keymap.set('v', 's', "l")

-- LSP Binds
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

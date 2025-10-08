vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>n', "<cmd>NvimTreeToggle<cr>")
vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeFocus<cr>")

vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>")
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>")
vim.keymap.set('n', '<leader>fd', "<cmd>Telescope lsp_definitions<cr>")
vim.keymap.set('n', '<leader>fw', "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>")
vim.keymap.set('n', 'gr', "<cmd>Telescope lsp_references<cr>")

vim.keymap.set('n', '<ESC>', "<cmd>noh<cr>")


-- Directional keys for Dvorak Layout
vim.keymap.set('n', 'h', "h")
vim.keymap.set('n', 't', "k")
vim.keymap.set('n', 'n', "j")
vim.keymap.set('n', 's', "l")

vim.keymap.set('v', 'h', "h")
vim.keymap.set('v', 't', "k")
vim.keymap.set('v', 'n', "j")
vim.keymap.set('v', 's', "l")

-- Misc
vim.keymap.set('n', '<C-n>', "n")
vim.keymap.set('v', '<C-n>', "n")

-- LSP Binds
local opts = { silent = true }
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end)
vim.keymap.set('n', 'gE', function() vim.diagnostic.goto_prev() end)
vim.keymap.set('n', 'ge', function() vim.diagnostic.goto_next() end)



-- LuaSnip Binds
local ls = require("luasnip")

vim.keymap.set({ "i" }, "<C-x>", function() ls.expand() end, opts)
vim.keymap.set({ "i", "s" }, "<C-s>", function() ls.jump(1) end, opts)
vim.keymap.set({ "i", "s" }, "<C-S-s>", function() ls.jump(-1) end, opts)

vim.keymap.set({ "i", "s" }, "<Tab>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, opts)

-- TreeSJ bindings
local tsj = require("treesj")
vim.keymap.set({ "n" }, "<leader>tj", function() tsj.toggle() end, opts)

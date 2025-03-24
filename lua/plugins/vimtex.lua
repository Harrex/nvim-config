return {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_mappings_enabled = false
        -- vim.g.vimtex_quickfix_enabled = false
        -- vim.g.vimtex_quicxfix_mode = 0
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_quickfix_autoclose_after_keystrokes = 2
    end
}

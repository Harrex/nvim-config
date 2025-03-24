return {
    "L3MON4D3/LuaSnip",
    config = function()
        require("luasnip").config.set_config({ -- Setting LuaSnip config
            -- Enable autotriggered snippets
            enable_autosnippets = true,
            -- Use Tab (or some other key if you prefer) to trigger visual selection
            store_selection_keys = "<C-b>",
        })

        require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/LuaSnip/" })
    end
}

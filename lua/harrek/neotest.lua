require("neotest").setup({
    adapters = {
        require("neotest-java")({}),
        --   require("neotest-plenary"),
        --   require("neotest-vim-test")({
        --     ignore_file_types = { "python", "vim", "lua" },
        --   }),
    },
})

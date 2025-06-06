return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup {
            formatters_by_ft = {
                python = { "black" },
                rust = { "rustfmt" }
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback",
            }
        }
    end
}

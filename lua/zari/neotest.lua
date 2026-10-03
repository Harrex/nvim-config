require("neotest").setup({
    adapters = {
        require("neotest-java")({
            junit_jar = nil,     -- default: auto-detected
            jvm_args = { "-Xmx512m" }, -- custom JVM arguments
            incremental_build = true, -- recompile changed files
            disable_update_notifications = false,
            test_classname_patterns = {
                "^.*Tests?$", "^.*IT$", "^.*Spec$"
            },
        }),
    },
})

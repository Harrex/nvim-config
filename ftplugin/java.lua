-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
    -- The command that starts the language server
    -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
    -- cmd = {
    --     'java', -- or '/path/to/java21_or_newer/bin/java'
    --     -- depends on if `java` is in your $PATH env variable and if it points to the right version.
    --
    --     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    --     '-Dosgi.bundles.defaultStartLevel=4',
    --     '-Declipse.product=org.eclipse.jdt.ls.core.product',
    --     '-Dlog.protocol=true',
    --     '-Dlog.level=ALL',
    --     '-Xmx1g',
    --     '--add-modules=ALL-SYSTEM',
    --     '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    --     '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    --
    --     -- 💀
    --     '-jar',
    --     '/home/harrek/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar',
    --
    --     -- 💀
    --     '-configuration', '/home/harrek/.local/share/nvim/mason/packages/jdtls/config_linux',
    --
    --     -- 💀
    --     -- See `data directory configuration` section in the README
    --     -- '-data', vim.fn.getcwd()
    -- },

    cmd = { '/home/harrek/.local/share/nvim/mason/bin/jdtls' },
    --
    -- 💀
    -- This is the default if not provided, you can remove it. Or adjust as needed.
    -- One dedicated LSP server & client will be started per unique root_dir
    --
    -- vim.fs.root requires Neovim 0.10.
    -- If you're using an earlier version, use: require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
    root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew" }),

    -- Here you can configure eclipse.jdt.ls specific settings
    -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
    -- for a list of options
    settings = {
        java = {
        }
    },

    -- Language server `initializationOptions`
    -- You need to extend the `bundles` with paths to jar files
    -- if you want to use additional eclipse.jdt.ls plugins.
    --
    -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
    --
    -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
    init_options = {
        bundles = {}
    },
}
-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)

--
-- require('jdtls').start_or_attach(
--     {
--         cmd = { '/home/harrek/.local/share/nvim/mason/bin/jdtls' },
--         root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
--         completion = {
--             favoriteStaticMembers = {
--                 "org.hamcrest.MatcherAssert.assertThat",
--                 "org.hamcrest.Matchers.*",
--                 "org.hamcrest.CoreMatchers.*",
--                 "org.junit.jupiter.api.Assertions.*",
--                 "java.util.Objects.requireNonNull",
--                 "java.util.Objects.requireNonNullElse",
--                 "org.mockito.Mockito.*"
--             },
--             filteredTypes = {
--                 "com.sun.*",
--                 "io.micrometer.shaded.*",
--                 "java.awt.*",
--                 "jdk.*", "sun.*",
--             },
--         },
--     }
-- )

return {
    "neovim/nvim-lspconfig",
    
    event = {"BufReadPre", "BufNewFile"},

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function ()
        require("mason").setup({})
        local language_servers = {
            jsonls = {},
            tsserver = {},
            rust_analyzer = {},
            html = {},
            htmx = {},
            taplo = {},
            sqlls = {},
            cssls = {},
        }

        -- Depends on plugin `nvim-cmp`
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(language_servers),
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        settings = language_servers[server_name],
                        capabilities = capabilities
                    })
                end
            }
        })

    end
}

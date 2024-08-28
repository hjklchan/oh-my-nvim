return {
    "neovim/nvim-lspconfig",
    
    event = {"BufReadPre", "BufNewFile"},

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "folke/lazydev.nvim",
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
            eslint = {},
        }

        local on_attach = function (_, bufnr)
            -- Enable completion triggered by <c-x><c-o>
            local nmap = function(keys, func, desc)
                if desc then
                    desc = 'LSP: ' .. desc
                end

                vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
            end

            nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
            nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
            nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
            nmap('gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
            nmap('<leader>td', vim.lsp.buf.type_definition, 'Type [D]efinition')
            nmap('<leader>td', vim.lsp.buf.type_definition, 'Type [D]efinition')
            nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
            nmap("<space>fc", function()
                vim.lsp.buf.format { async = true }
            end, "[F]ormat [C]ode")
        end

        -- Depends on plugin `nvim-cmp`
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(language_servers),
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        settings = language_servers[server_name],
                        on_attach = on_attach,
                        capabilities = capabilities
                    })
                end
            }
        })

    end
}

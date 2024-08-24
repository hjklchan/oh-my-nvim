return {
    "hrsh7th/nvim-cmp",

    event = "InsertEnter",

    -- Dependency on cmp-path
    dependencies = {
        -- Sources
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        -- Snippet engines
        {
            "saadparwaiz1/cmp_luasnip",
            dependencies = {
                "L3MON4D3/LuaSnip",
                dependencies = {
                    "rafamadriz/friendly-snippets"
                }
            },
        },
    },

    config = function ()
        -- Lazy load luasnip plugin
        require("luasnip.loaders.from_vscode").lazy_load()

        local cmp = require("cmp")
        cmp.setup({
            sources = {
                -- From dependency nvim-lspconfig
                { name = "nvim_lsp" },
                -- From dependency cmp-path
                { name = "path" },
                -- From dependency saadparwaiz1/cmp_luasnip
                { name = "luasnip" },
                { name = "buffer" }
            },

            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-m>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),

            -- Registry snippet engine
            snippet = {
                expend = function (args)
                    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                    -- More snippets...
                end
            }
        })
    end
}

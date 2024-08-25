return {
    {
        'goolord/alpha-nvim',
        event = "VimEnter",
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },
    {
        "utilyre/barbecue.nvim",
        event = {"BufReadPre", "BufNewFile"},
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional
        },
        config = function ()
            require("barbecue").setup({
                theme = "github_dark_default"
            })
        end
    }
}

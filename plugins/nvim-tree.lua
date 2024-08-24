
return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    -- Lazy keymaps
    keys = {
        { "<leader>ee", "<cmd>NvimTreeToggle<CR>", mode = { "n" } },
        -- FIXME
        -- { "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", mode = { "n" } },
        { "<leader>ec", "<cmd>NvimTreeCollapse<CR>", mode = { "n" } },
    },
    config = function ()
        local nvim_tree = require("nvim-tree")

        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvim_tree.setup({
            sort = {
                sorter = "case_sensitive"
            },
            view = {
                width = 30
            },
            renderer = {
                group_empty = true,
                hidden_display = "none",
            },
            filters = {
                dotfiles = false,
            },
        })
    end
}

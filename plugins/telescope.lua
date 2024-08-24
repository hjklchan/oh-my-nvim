return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },

    -- event = {"BufReadPre", "BufNewFile"},

    keys = {
        { "<leader>ff", "<CMD>lua require('telescope.builtin').find_files()<CR>" },
        { "<leader>fr", "<CMD>lua require('telescope.builtin').oldfiles()<CR>" },
        { "<leader>fg", "<CMD>lua require('telescope.builtin').live_grep()<CR>" },
    },
    
    config = function ()
        require("telescope")

        -- set keymaps
        -- vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
        -- vim.keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>")
        -- vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
    end
}

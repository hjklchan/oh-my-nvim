return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },

    event = { "VimEnter" },

    keys = {
        { "<leader>ff", "<CMD>lua require('telescope.builtin').find_files()<CR>" },
        { "<leader>fr", "<CMD>lua require('telescope.builtin').oldfiles()<CR>" },
        { "<leader>fg", "<CMD>lua require('telescope.builtin').live_grep()<CR>" },
    },
    
    config = function ()
        require("telescope")
    end
}

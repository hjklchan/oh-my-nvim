return {
    {
        "windwp/nvim-autopairs",
        event = "VeryLazy",
        opts = {
            enable_check_bracket_line = false,
        }
    },
    -- Comment plugin
    {
        "echasnovski/mini.comment",
        event = { "BufReadPre", "BufNewFile" },
        config = true
    }
}

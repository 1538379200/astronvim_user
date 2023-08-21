return {
    {
        "VonHeikemen/fine-cmdline.nvim",
        dependencies = { "MunifTanjim/nui.nvim" },
        cmd = { "FineCmdline" },
        keys = {
            { ":", "<cmd>FineCmdline<CR>", mode = { "n" }, desc = "fine-cmdline" }
        }
    },
    {
        "VonHeikemen/searchbox.nvim",
        dependencies = { "MunifTanjim/nui.nvim" },
        cmd = { "SearchBoxIncSearch", "SearchBoxReplace" },
        keys = {
            { "/", "<cmd>SearchBoxIncSearch title=\"Search\"<cr>", mode = { "n" }, desc = "SearchBoxIncSearch" },
            {
                "<C-n>",
                "<Plug>(searchbox-next-match)",
                mode = { "n", "i" },
                desc =
                "search-box-next-match"
            },
            {
                "<C-p>",
                "<Plug>(searchbox-prev-match)",
                mode = { "n", "i" },
                desc =
                "searchbox-prev-match"
            }
        }
    }
}

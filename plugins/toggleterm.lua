return {
    "akinsho/toggleterm.nvim",
    opts = function(_, opts)
        return require("astronvim.utils").extend_tbl(opts, {
            -- open_mapping = [[<C-\>]],
            start_in_insert = false
        })
    end
}

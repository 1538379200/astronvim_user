return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            integrations = {
                alpha = true,
                aerial = true,
                dap = { enabled = true, enable_ui = true },
                mason = true,
                neotree = true,
                notify = true,
                nvimtree = false,
                semantic_tokens = true,
                symbols_outline = true,
                telescope = true,
                ts_rainbow = false,
                which_key = true,
            },
            no_italic = true,
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        optional = true,
        opts = {
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        },
    },
}
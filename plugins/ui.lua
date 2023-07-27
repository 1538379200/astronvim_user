return {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
        require("catppuccin").setup {
            no_italic = true,
            styles = {
                comments = {},
                conditionals = {}
            }
        }
    end
}

return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      -- "lua"
      "lua", "python", "go", "rust", "markdown", "yaml", "toml"
    })
    return require("astronvim.utils").extend_tbl(opts, {
      textobjects = {
        move = {
          goto_next_start = {
            ["<A-j>"] = { query = "@function.outer", desc = "Next function start" },
          },
          goto_previous_start = {
            ["<A-k>"] = { query = "@function.outer", desc = "Previous function start" },
          },
        },
      },
    })
  end,
}

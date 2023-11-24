return {
  "onsails/lspkind.nvim",
  opts = function(_, opts)
    -- local is_win = vim.fn.has("win32")
    local is_win = false
    opts.preset = "codicons"
    if is_win then
      opts.symbol_map = {
        Text = "🖊️ ",
        Method = "Ⓜ️  ",
        Function = "🗡️ ",
        Constructor = "Ⓜ️  ",
        Field = "🔨 ",
        Variable = "🔧 ",
        Class = "⚒️ ",
        Interface = "🔓 ",
        Module = "🗃️ ",
        Property = "🪛 ",
        Unit = "🧸 ",
        Value = "📌 ",
        Enum = "⚒️ ",
        Keyword = "🔑 ",
        Snippet = "✂️ ",
        Color = "🎨 ",
        File = "📃 ",
        Reference = "🪝 ",
        Folder = "📂 ",
        EnumMember = "🔧 ",
        Constant = "🪨 ",
        Struct = "⚒️ ",
        Event = "⏲️ ",
        Operator = "🧮 ",
        TypeParameter = "⛈️ "
      }
    else
      opts.symbol_map = {
        Text = "󰊄 ",
        Method = " ",
        Function = "󰊕 ",
        Constructor = " ",
        Field = " ",
        Variable = "󰫧 ",
        Class = " ",
        Interface = " ",
        Module = " ",
        Property = " ",
        Unit = " ",
        Value = " ",
        Enum = " ",
        Keyword = "🔑 ",
        Snippet = "󰆐 ",
        Color = " ",
        File = " ",
        Reference = " ",
        Folder = " ",
        EnumMember = " ",
        Constant = " ",
        Struct = " ",
        Event = " ",
        Operator = " ",
        TypeParameter = " ",
      }
    end
    return opts
  end,
}

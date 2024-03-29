-- 组合 iskeyword 表，增加 iskeyword 值
function keywords(...)
  local keys = vim.opt.iskeyword:get()
  for _, v in ipairs { ... } do
    table.insert(keys, v)
  end
  return keys
end

-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = false,          -- sets vim.opt.wrap
    tabstop = 4,
    shiftwidth = 4,
    clipboard = 'unnamedplus',
    linespace = 10,
    ignorecase = true,
    autoindent = true,
    iskeyword = keywords("-"),
    -- undofile = true,
    -- undodir = "./"
  },
  g = {
    mapleader = " ",                 -- sets vim.g.mapleader
    maplocalleader = " ",
    autoformat_enabled = true,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autopairs_enabled = true,        -- enable autopairs at start
    diagnostics_mode = 3,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = false,       -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
    -- neovide_cursor_animation_length = 0,
    neovide_cursor_trail_size = 0.4,
    neovide_hide_mouse_when_typing = true,
    -- 自定义 vim-move 插件的功能键
    move_key_modifier = "",
    move_key_modifier_visualmode = "S",
    -- 设置 mundo 打开位置
    mundo_right = 1,
    mundo_close_on_revert = 1,
    mundo_width = 80,
  },
  o = {
    -- guifont = "FiraCode NFM:h10"
    -- guifont = "Monaco:h9"
    -- guifont = "GoMono NFM:h10"
    -- guifont = "Inconsolata Nerd Font Mono:h10"
    guifont = "CaskaydiaCove Nerd Font:h9"
    -- guifont = "NotoMono Nerd Font Mono:h10"
    -- guifont = "NotoSansM Nerd Font Mono:h10"

    -- Iosevka: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka/Medium
    -- guifont = "Iosevka Nerd Font Mono:h10"

    -- guifont = "JetBrainsMono Nerd Font Mono:h10"
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end

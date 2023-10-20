-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<C-s>"] = { "<cmd>w<cr>", desc="保存"},
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    ["<A-l>"] =
    { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<A-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- todo-comments 相关设置
    ["<leader>fT"] = { "<cmd>TodoTelescope<cr>", desc = "搜索TODO" },
    ["<leader>Tl"] = { "<cmd>TodoLocList<cr>", desc = "TODO列表" },
    ["<leader>Tq"] = { "<cmd>TodoQuickFix<cr>", desc = "TODO快速修复" },
    ["]t"] = {
      function()
        require("todo-comments").jump_next()
      end,
      desc = "跳到下一个TODO"
    },
    ["[t"] = {
      function()
        require("todo-comments").jump_prev()
      end,
      desc = "跳到上一个TODO"
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<S-Enter>"] = { "o<Esc>", desc = "在下方创建空行" },
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<C-F12>"] = { function() require("aerial").toggle() end, desc = "Symbols outline" },
    ["<leader>fg"] = { function() require("telescope").extensions.live_grep_args.live_grep_args() end, desc =
    "telescope live grep args" },
    ["<leader>ZM"] = { "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    -- ["K"] = { "<cmd>Lspsaga hover_doc<cr>", desc="Lspsaga hover_doc"},
    -- Overseer 的相关快捷方式
    ["<F10>"] = { "<cmd>OverseerToggle right<cr>", desc = "Overseer Toggle" },

    -- 使用黑洞寄存器使删除不进行数据剪切
    -- ["d"] = { "\"_d", desc="删除而不剪切"},
    ["x"] = {"\"_x", desc="删除单个字符不剪切"},
    ["dd"] = { "\"_dd", desc="删除一行不剪切"},
    ["d"] = { "\"_d", desc="删除不剪切"},
    ["D"] = {"\"_D", desc="删除不剪切"},
    ["X"] = { "\"_X", desc="删除不剪切"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-h>"] = { "<Left>" },
    ["<C-l>"] = { "<Right>" },
    ["<C-v>"] = { "<C-r>+" },
    ["<C-z>"] = { "<cmd>undo<cr>" },
    ["<C-S-l>"] = { "<C-o>$" },
    ["<C-S-h>"] = { "<C-o>^" },
    ["<C-s>"] = { "<cmd>w<cr>", desc = "Force write" },
    ["<C-Enter>"] = { function() require("luasnip").jump(1) end, desc = "luasnip向下跳转" },
    ["<C-S-Enter>"] = { function() require("luasnip").jump(-1) end, desc = "luasnip向上跳转" }
  },
  v = {
    ["<C-c>"] = { "y" },
    ["d"] = { "\"_d", desc="删除而不剪切"},
    -- ["x"] = { "\"_x", desc="删除不剪切"},
  },
}

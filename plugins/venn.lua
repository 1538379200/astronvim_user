function ToggleVenn()
    local venn_enabled = vim.inspect(vim.b.venn_enabled)
    if venn_enabled == "nil" then
        vim.b.venn_enabled = true
        vim.notify("Venn enabled !!!")
        vim.cmd [[setlocal ve=all]]
        vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<cr>", { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<cr>", { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<cr>", { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<cr>", { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<cr>", { noremap = true, silent = true })
    else
        vim.notify("Venn disabled !!!")
        vim.cmd [[setlocal ve=]]
        vim.cmd [[mapclear <buffer>]]
        vim.b.venn_enabled = nil
    end
end

return {
    "jbyuki/venn.nvim",
    cmd = { "VBox" },
    event = "VeryLazy",
    keys = {
        {
            "<leader>v",
            mode = { "n" },
            "<cmd>lua ToggleVenn()<cr>",
            desc = "Venn Plugin"
        }
    }
}

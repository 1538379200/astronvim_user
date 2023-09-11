return {
    vim.api.nvim_create_autocmd("BufEnter", {
        desc = "QuickRunner",
        pattern = "*",
        group = vim.api.nvim_create_augroup("QuickRunner", { clear = true }),
        callback = function()
            local filetype = vim.filetype.match({ buf = 0 })
            if filetype == "python" then
                vim.api.nvim_buf_set_keymap(
                    0,
                    "n",
                    "<C-S-F10>",
                    "<cmd>TermExec direction=float cmd=\"py %\"<cr>",
                    { silent = true, noremap = true }
                )
            elseif filetype == "markdown" then
                vim.api.nvim_buf_set_keymap(
                    0,
                    "n",
                    "<C-S-F10>",
                    "<cmd>MarkdownPreviewToggle<cr>",
                    { silent = true, noremap = true }
                )
            end
        end
    })
}

return {
    {
        vim.api.nvim_create_augroup("quickrunner", { clear = true }),
        vim.api.nvim_create_autocmd("FileType", {
            desc = "快速运行文件",
            -- pattern = "AstroFile",
            pattern = "python",
            group = "quickrunner",
            callback = function()
                vim.api.nvim_buf_set_keymap(
                    0,
                    "n",
                    "<C-S-F10>",
                    "<cmd>TermExec direction=float cmd=\"py %\"<cr>",
                    { silent = true, noremap = true }
                )
            end,
        })
    },
}

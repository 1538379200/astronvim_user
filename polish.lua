function match_pycmd()
    local state = require("neo-tree.sources.manager").get_state("filesystem")
    local project_path = state.path
    local terminals = require("toggleterm.terminal").get_all(true)
    local pycmd = "py %"
    if (terminals == nil) or (#terminals == 0) then
        pycmd = string.format("set PYTHONPATH=%s && py %%", project_path)
    end
    local cmd = string.format("<cmd>TermExec direction=float cmd=\"%s\"<cr>", pycmd)
    return cmd
end

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
                    match_pycmd(),
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
            elseif filetype == "go" then
                vim.api.nvim_buf_set_keymap(
                    0,
                    "n",
                    "<C-S-F10>",
                    "<cmd>go run .<cr>",
                    { silent = true, noremap = true }
                )
            end
        end
    })
}

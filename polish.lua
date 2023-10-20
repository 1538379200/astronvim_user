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

function set_ime(args)
    if vim.g.neovide then
        if args.event:match("Enter$") then
            vim.g.neovide_input_ime = true
        else
            vim.g.neovide_input_ime = false
        end
    end
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
    }),

    vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
        group = vim.api.nvim_create_augroup("ime_input", { clear = true }),
        pattern = "*",
        callback = set_ime
    }),

    vim.api.nvim_create_autocmd({ "TermOpen" }, {
        group = vim.api.nvim_create_augroup("term_mapping", { clear = true }),
        pattern = "term://*",
        callback = function()
            local opts = { buffer = 0 }
            vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
            vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
        end
    })
}

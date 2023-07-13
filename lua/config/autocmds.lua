-- Enter insert mode when switching to a terminal pane
local autocmd = vim.api.nvim_create_autocmd

autocmd("WinEnter", {
    pattern = "term://*",
    command = "startinsert",
}
)


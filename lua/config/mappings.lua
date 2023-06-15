vim.keymap.set("n", "<leader>dv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>cs", vim.cmd.noh)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "10jzz")
vim.keymap.set("n", "<C-u>", "10kzz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- TODO: What should i do here?
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


vim.keymap.set("n", "<leader>[]", "<cmd>vs<cr>")
vim.keymap.set("n", "<leader>--", "<cmd>sp<cr>")

vim.keymap.set("n", "<leader>t-", ":sp<cr><C-w><C-j>:terminal<cr>:set nonumber<cr>:set norelativenumber<cr>i")
vim.keymap.set("n", "<leader>t]", ":vs<cr><C-w><C-l>:terminal<cr>:set nonumber<cr>:set norelativenumber<cr>i")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-w>j", "<cmd>wincmd j<cr>")
vim.keymap.set("t", "<C-w>k", "<cmd>wincmd k<cr>")
vim.keymap.set("t", "<C-w>h", "<cmd>wincmd h<cr>")
vim.keymap.set("t", "<C-w>l", "<cmd>wincmd l<cr>")
vim.keymap.set("t", "<C-w>w", "<cmd>wincmd w<cr>")
vim.keymap.set("t", "<C-w><C-w>", "<cmd>wincmd w<cr>")

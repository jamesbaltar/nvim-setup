vim.keymap.set("n", "<Leader>pv", vim.cmd.Ex)


-- Setup tab navigation
vim.keymap.set("n", "th",  vim.cmd.tabfirst)
vim.keymap.set("n", "tk",  vim.cmd.tabnext)
vim.keymap.set("n", "tj",  vim.cmd.tabprevious)
vim.keymap.set("n", "tl",  vim.cmd.tablast)
vim.keymap.set("n", "tt",  vim.cmd.tabedit)
vim.keymap.set("n", "tn",  vim.cmd.tabnext)
vim.keymap.set("n", "tm",  vim.cmd.tabmove)
vim.keymap.set("n", "td",  vim.cmd.tabclose)

-- Navigation
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

-- Utils Mapping
vim.keymap.set("n", "<C-n>", "i<Enter><Esc>h")
vim.keymap.set("n", "<Leader>vs", function() vim.cmd("vsplit") end)
vim.keymap.set("n", "<Leader>s", function() vim.cmd("split") end)

vim.keymap.set("n", "<Leader>b", function() vim.cmd("CtrlPBuffer") end)

-- move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- copy/paste
vim.keymap.set("x", "<leader>p>", "\"_dP")

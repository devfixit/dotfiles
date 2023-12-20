-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
vim.keymap.set("n", "<S-u>", "<C-r>+")
vim.keymap.set("n", "<leader>v", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>qf", "<cmd>q!<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>split<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "<C-d>zz")
vim.keymap.set("n", "m", "<C-u>zz")
vim.keymap.set("n", "N", "nzzzv")
vim.keymap.set("n", "M", "Nzzzv")
vim.keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)

vim.keymap.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)
vim.keymap.set("n", "ff", "za")
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
-- Add any additional keymaps here
vim.keymap.set({ "i" }, "<C-k>", function()
	require("luasnip").expand()
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-l>", function()
	require("luasnip").jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-j>", function()
	require("luasnip").jump(-1)
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-e>", function()
	if require("luasnip").choice_active() then
		require("luasnip").change_choice(1)
	end
end, { silent = true })

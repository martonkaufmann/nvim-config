local lazy = require("lazy")
local telescope = require('telescope.builtin')

vim.keymap.set("n", "<C-e>", vim.cmd.Ex)
vim.keymap.set("n", "<leader>lh", lazy.home)

vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})
vim.keymap.set("n", "<C-p>", telescope.git_files, {})
vim.keymap.set("n", "<C-f>", function()
	telescope.grep_string({ search = vim.fn.input("") })
end)

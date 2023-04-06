local builtin = require("telescope.builtin")

vim.keymap.set("n", "<space>f", builtin.find_files, {})
vim.keymap.set("n", "<space>g", function()
	builtin.grep_string({search = vim.fn.input(" Grep > ") })
end)
vim.keymap.set("n", "<space>b", builtin.buffers, {})
vim.keymap.set("n", "<space>h", builtin.help_tags, {})

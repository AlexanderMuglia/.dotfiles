local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files in all files' })
vim.keymap.set('n', '<leader><C-p>', builtin.git_files, { desc = 'Telescope find files in git tracked files' })

vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

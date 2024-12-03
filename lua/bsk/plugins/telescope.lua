local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>tt', builtin.git_files, { desc = 'Telescope find files only in repo' })
vim.keymap.set('n', '<leader>ts', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require('telescope').setup({
    pickers = {
        -- Customize `find_files`
        find_files = {
            find_command = { 'rg', '--files', '--hidden', '--no-ignore' }, -- Include ignored files
        },
    },
})

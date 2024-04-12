local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  local search_term = vim.fn.input("Grep > ")
  require('telescope.builtin').grep_string({ search = search_term })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})



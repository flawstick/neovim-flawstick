require'nvim-tree'.setup {
    --no options for now
}

-- Keybinding to toggle nvim-tree
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })


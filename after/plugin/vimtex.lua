-- VimTeX configuration
vim.g.vimtex_log_verbose = 1
vim.g.vimtex_view_method = 'zathura'  -- Set the PDF viewer
vim.g.vimtex_compiler_method = 'latexmk'  -- Set the compiler method
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_compiler_latexmk = {
  continuous = 1,
  options = {
    '-shell-escape',
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
  },
}

-- VimTeX keybindings
vim.api.nvim_set_keymap('n', '<leader>ll', '<Plug>(vimtex-compile)', {})
vim.api.nvim_set_keymap('n', '<leader>lv', '<Plug>(vimtex-view)', {})
vim.api.nvim_set_keymap('n', '<leader>lq', '<Plug>(vimtex-stop)', {})
vim.api.nvim_set_keymap('n', '<leader>le', '<Plug>(vimtex-toggle)', {})

-- tex-conceal configuration
vim.g.tex_conceal = 'abdmg'  -- Set the conceal options you want

-- Enable conceal feature in Neovim
vim.cmd [[
  set conceallevel=2
  let g:tex_conceal='abdmg'
]]


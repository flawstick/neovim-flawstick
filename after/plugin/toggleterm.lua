-- toggleterm.lua
local Terminal  = require('toggleterm.terminal').Terminal

-- Define a horizontal terminal
local horizontal = Terminal:new{
    direction = 'horizontal',
    -- rest of the specific configurations for horizontal terminal
}

-- Define a floating terminal
local float = Terminal:new{
    direction = 'float',
    float_opts = {
        border = 'single', -- You can change to any border style you prefer
        -- other specific configurations for float terminal
    },
}

-- Define your keybinds
function _G.toggle_horizontal()
    horizontal:toggle()
end

function _G.toggle_float()
    float:toggle()
end

-- remaps
vim.api.nvim_set_keymap('n', [[<C-\>]], '<cmd>lua toggle_horizontal()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>lua toggle_float()<CR>', {noremap = true, silent = true})

-- Put u keybinds here


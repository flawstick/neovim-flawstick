require("flawstick.set")
require("flawstick.remap")

--add this for some reason
vim.cmd [[packadd packer.nvim]]

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- DO NOT INCLUDE THIS
vim.opt.rtp:append("~/personal/streamer-tools")
-- DO NOT INCLUDE THIS

local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end


vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- load the colorscheme
local colors = require("gruvbox-baby.colors").config()

-- configure gruvbox preferences
vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "italic"
vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}
vim.g.gruvbox_baby_transparent_mode = 1
vim.g.gruvbox_baby_highlights = {Normal = {fg = colors.magenta}}

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- disable winfixbuf for avante
vim.api.nvim_create_autocmd("User", {
  pattern = "AvanteSidebarOpen",
  callback = function()
    vim.wo.winfixbuf = false
    vim.opt_local.winfixbuf = false
  end,
})

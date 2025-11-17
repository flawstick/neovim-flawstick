-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
      'akinsho/toggleterm.nvim',
      config = function()
          require('toggleterm').setup{
              size = 10,
              open_mapping = [[<c-\>]],
              shade_terminals = true,
              start_in_insert = true,
              insert_mappings = true,
              terminal_mappings = true,
              persist_size = true,
              direction = 'horizontal',
              close_on_exit = true,
              shell = vim.o.shell,
          }
      end
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use {
      'luisiacc/gruvbox-baby',
      as = 'gruvbox-baby',
  }

  use {
      'bluz71/vim-moonfly-colors',
      as = 'moonfly'
  }

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }

  use("nvim-treesitter/playground")
  use("nvim-treesitter/nvim-treesitter")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");
  use("mhartington/formatter.nvim")
  use 'wbthomason/packer.nvim' -- Packer manages itself
  use 'mhartington/formatter.nvim'


  -- avante
  -- Required plugins
  use 'nvim-treesitter/nvim-treesitter'
  use 'stevearc/dressing.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'MeanderingProgrammer/render-markdown.nvim'

  -- Optional dependencies
  use 'hrsh7th/nvim-cmp'
  use 'nvim-tree/nvim-web-devicons' -- or use 'echasnovski/mini.icons'
  use 'HakonHarnes/img-clip.nvim'
  use 'zbirenbaum/copilot.lua'

  use {
      "yetone/avante.nvim",
      run = "make",
      requires = {
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
          "folke/snacks.nvim",
      },
  }


  use({
      "andweeb/presence.nvim",
    config = function()
      require("presence")
    end
  })

  -- LSP Configuration
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  use("lervag/vimtex")
  use("KeitaNakamura/tex-conceal.vim")

  use({
      "epwalsh/obsidian.nvim",           -- or "obsidian-nvim/obsidian.nvim" (community-maintained fork)
      requires = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
      config = function()
          require("obsidian").setup({
              dir = "~/Documents/Endeavour/",   -- path to your vault; auto-detects `.obsidian/` by default
              completion = { nvim_cmp = true },  -- `[[wikilinks]]` & `#tags` completion
              mappings = { ["gf"] = require("obsidian.mappings").gf_passthrough() },
          })
      end,
  })
end)


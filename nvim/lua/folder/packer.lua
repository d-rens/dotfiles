-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  --Packer can manage itself
  use('wbthomason/packer.nvim')

      use { 'ThePrimeagen/vim-be-good' }
      use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
      }

      use {'akinsho/bufferline.nvim', tag = "*"}

      use "m4xshen/hardtime.nvim"

      use({
          'folke/tokyonight.nvim',
          as = 'tokyonight',
          config = function()
              vim.cmd('colorscheme tokyonight-night')
          end
      })
      use { "catppuccin/nvim", as = "catppuccin" }
      use('norcalli/nvim-colorizer.lua')

      use { 'nvim-lualine/lualine.nvim',
          requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }

        use{ "epwalsh/obsidian.nvim"}


      --use { 'nvim-tree/nvim-tree.lua' }


      --use {
          --'Exafunction/codeium.vim',
          --config = function ()
              ---- Change '<C-g>' here to any keycode you like.
              --vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
              --vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
              --vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
              --vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
          --end
      --}

      --use {'nvim-orgmode/orgmode', config = function()
          --require('orgmode').setup{}
      --end
      --}

      use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
      use('nvim-treesitter/playground')
      use('theprimeagen/harpoon')
      use('mbbill/undotree')
      use('tpope/vim-fugitive')
      use('lervag/vimtex')
      use('Sirver/ultisnips')
      use('humanoid-colors/vim-humanoid-colorscheme')
      --use('github/copilot.vim')
      use('windwp/nvim-autopairs')

      use{ 'VonHeikemen/lsp-zero.nvim',
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},
          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }

end)

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins

  -- COQ completion
  use { 'ms-jpq/coq_nvim', branch='coq' }
  use { 'ms-jpq/coq.artifacts', branch='artifacts' }
  use { 'ms-jpq/coq.thirdparty', branch='3p' }

  -- Useful Basics
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'rafi/awesome-vim-colorschemes'

  -- LSP
  -- use 'neovim/nvim-lspconfig' -- enable LSP
  -- use 'williamboman/nvim-lsp-installer' -- simple to use language server installer

  -- Pretty stuff
  use 'kyazdani42/nvim-web-devicons'
  use 'hoob3rt/lualine.nvim'

  use 'akinsho/flutter-tools.nvim'

  -- Treesitter
  use ({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use 'nvim-treesitter/playground'

  -- Undotree
  use 'mbbill/undotree'

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},         -- Required
          {'hrsh7th/cmp-nvim-lsp'},     -- Required
          {'hrsh7th/cmp-buffer'},       -- Optional
          {'hrsh7th/cmp-path'},         -- Optional
          {'saadparwaiz1/cmp_luasnip'}, -- Optional
          {'hrsh7th/cmp-nvim-lua'},     -- Optional

          -- Snippets
          {'L3MON4D3/LuaSnip'},             -- Required
          {'rafamadriz/friendly-snippets'}, -- Optional
      }
  }

end)

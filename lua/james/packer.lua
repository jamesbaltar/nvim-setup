vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	  -- Packer can manage itself
	  use 'wbthomason/packer.nvim'

	  use {
		  'nvim-telescope/telescope.nvim', tag = '0.1.5',
		  -- or                            , branch = '0.1.x',
		  requires = { {'nvim-lua/plenary.nvim'} }
	  }

	  -- use({ 
	  --     'rose-pine/neovim', 
	  --     as = 'rose-pine' ,
	  --     config = function()
	  --   	  vim.cmd('colorscheme rose-pine')
	  --     end
	  -- })
      use('navarasu/onedark.nvim')
      require('onedark').setup{
          style = 'warmer'
      }
      require('onedark').load()

	  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	  use 'nvim-treesitter/playground'
	  use 'ThePrimeagen/harpoon'
	  use 'mbbill/undotree'
	  use 'tpope/vim-fugitive'

	  use {
		  'VonHeikemen/lsp-zero.nvim',
		  branch = 'v3.x',
		  requires = {
			  --- Uncomment these if you want to manage LSP servers from neovim
			  -- {'williamboman/mason.nvim'},
			  -- {'williamboman/mason-lspconfig.nvim'},

			  -- LSP Support
			  {'neovim/nvim-lspconfig'},
			  -- Autocompletion
			  {'hrsh7th/nvim-cmp'},
			  {'hrsh7th/cmp-nvim-lsp'},
			  {'L3MON4D3/LuaSnip'},
		  }
	  }

	  use 'williamboman/mason.nvim'
	  use 'williamboman/mason-lspconfig.nvim'

      use({
          "L3MON4D3/LuaSnip",
          -- follow latest release.
          tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
          -- install jsregexp (optional!:).
          run = "make install_jsregexp"
      })
      use "rafamadriz/friendly-snippets"
end)

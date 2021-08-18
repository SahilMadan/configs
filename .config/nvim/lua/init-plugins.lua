return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy search
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    config = require'plugin.telescope'
  }

  -- Treesitter: Prettier highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    branch = '0.5-compat',
    run = ':TSUpdate',
    config = require'plugin.treesitter'
  }

  -- General language config neovim's built-in lsp
  use {
    'neovim/nvim-lspconfig',
    config = require'plugin.lspconfig'
  }

  -- Autocompletion
  use {
    'hrsh7th/nvim-compe',
    config = require'plugin.compe'
  }

  -- Git Integration
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = require'plugin.gitsigns'
  }

  -- Color highlighter
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require'colorizer'.setup{
       'css';
       'javascript';
        html = {
          mode = 'foreground';
        }
      }
    end
  }

  -- Theme: Tokyo Night
  use {'folke/tokyonight.nvim'}

  -- Theme: Nightfox
  use 'EdenEast/nightfox.nvim'

  -- Tabline
  use {
    'romgrk/barbar.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = require'plugin.barbar'
  }

  -- Commenting text in/out
  use {
    'b3nj5m1n/kommentary',
    config = require'plugin.kommentary',
  }

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = require'plugin.nvim-tree'
  }

  -- Support for Zig programming language 
  use {
    'ziglang/zig.vim',
    opt = true,
    ft = {"zig"},
  }

  -- Snippets
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/vim-vsnip-integ'}

  -- GLSL
  use "tikhomirov/vim-glsl"
end)

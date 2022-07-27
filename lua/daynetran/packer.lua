-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- Different Themes
--  use 'folke/tokyonight.nvim'
-- use { "sainnhe/sonokai.nvim"}
  use { "npxbr/gruvbox.nvim" }

  -- Treesitter
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
  use 'nvim-lua/plenary.nvim'

-- Telescope, Fuzzy Finder
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Easy but less customizeable lsp
  use {'neoclide/coc.nvim', branch = 'release'}
-- HARDER TO DO, BUT MORE CUSTOMIZEABLE LSP/AUTO
  -- Language Service Protocl
--  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  -- autocomplete
--  use 'hrsh7th/nvim-cmp'

end)

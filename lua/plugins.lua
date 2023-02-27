vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
  function(use)
    -- packer itself
    use 'wbthomason/packer.nvim'

    -- nvim-cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'

    -- theme
    use 'glepnir/zephyr-nvim'

    -- nvim-treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    
    -- nvim-tree
    use {
        "kyazdani42/nvim-tree.lua",
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- lspconfig
    use 'neovim/nvim-lspconfig'
    -- nvim-lsp-installer
    use {
      "williamboman/nvim-lsp-installer",
      config = function()
        require("nvim-lsp-installer").setup {
          ui = {
            icons = {
              server_installed = "✓",
              server_pending = "➜",
              server_uninstalled = "✗"
            }
          }
        }
      end
    }      

  end
})


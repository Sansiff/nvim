vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
  function(use)
    -- packer itself
    use 'wbthomason/packer.nvim'
    
    -- auto-pairs rainbow
    use 'jiangmiao/auto-pairs'
    use 'frazrepo/vim-rainbow'

    -- nvim-cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    
    -- LuaSnip
    use ({
        'L3MON4D3/LuaSnip',
        tag = "v<CurrentMajor>.*",
        run = "make install_jsregexp" 
    })

    use 'saadparwaiz1/cmp_luasnip'

    -- theme
    use ({
        'glepnir/zephyr-nvim',
        require = { 'nvim-treesitter/nvim-treesitter', opt = true }
    })

    -- nvim-treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    
    -- nvim-tree
    use {
        "kyazdani42/nvim-tree.lua",
        requires = 'kyazdani42/nvim-web-devicons',
        tag = 'nightly'
    }
   

    -- vim-airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
        

    -- math/markdown
    use 'JamshedVesuna/vim-markdown-preview'
    use 'iamcco/mathjax-support-for-mkdp'

    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

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


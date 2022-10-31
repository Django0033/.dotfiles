return require('packer').startup(function(use)

    -- Basic
    use 'neovim/nvim-lspconfig'
    use 'wbthomason/packer.nvim'
    use 'dracula/vim'
    use 'romgrk/barbar.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'mbbill/undotree'
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'kyazdani42/nvim-web-devicons'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'ap/vim-css-color'
    use 'vifm/vifm.vim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'renerocksai/telekasten.nvim'
    use 'renerocksai/calendar-vim'
    use 'ggandor/leap.nvim'
    -- use {
    --     'phaazon/hop.nvim',
    --     branch = 'v2', -- optional but strongly recommended
    --     config = function()
    --         -- you can configure Hop the way you like here; see :h hop-config
    --         require'hop'.setup { keys = 'iduhetonas' }
    --     end
    -- }
    use {
        'folke/which-key.nvim',
        config = function()
            require('which-key').setup {
            }
        end
    }
    
    -- Advance
    -- use {
    --     'neoclide/coc.nvim',
    --     branch = 'release',
    -- }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
    use 'SirVer/ultisnips'
    use 'quangnguyen30192/cmp-nvim-ultisnips'
    use 'onsails/lspkind.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'TimUntersberger/neogit'
    use 'RRethy/vim-illuminate'
    use { "anuvyklack/windows.nvim",
       requires = {
          "anuvyklack/middleclass",
          "anuvyklack/animation.nvim"
       },
       config = function()
          vim.o.winwidth = 10
          vim.o.winminwidth = 10
          vim.o.equalalways = false
          require('windows').setup()
       end
    }
end)

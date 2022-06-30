return require'packer'.startup(function()
 	use { 'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp' }
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'SirVer/ultisnips'
    use 'ThePrimeagen/vim-be-good'
    use 'TimUntersberger/neogit'
    use 'dracula/vim'
    use 'honza/vim-snippets'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'kyazdani42/nvim-web-devicons'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'lukas-reineke/lsp-format.nvim'
    use 'mbbill/undotree'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'onsails/lspkind.nvim'
    use 'renerocksai/telekasten.nvim'
    use 'romgrk/barbar.nvim'
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'tpope/vim-commentary'
    -- use 'tpope/vim-fugitive'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'wbthomason/packer.nvim'
    use { 'goolord/alpha-nvim', config = function () require'alpha'.setup(require'alpha.themes.dashboard'.config) end }
    use { 'kyazdani42/nvim-tree.lua', tag = 'nightly', }
    use { 'lewis6991/gitsigns.nvim', tag = 'release', }
    use { 'nvim-telescope/telescope-frecency.nvim', config = function() require"telescope".load_extension("frecency") end, requires = {"tami5/sqlite.lua"} }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'williamboman/nvim-lsp-installer', config = function() require('nvim-lsp-installer').setup{} end}
    use { 'windwp/nvim-autopairs', config = function() require("nvim-autopairs").setup {} end }
    use {
      'phaazon/hop.nvim',
      branch = 'v1', -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'dihutenosa' }
      end
    }
end)

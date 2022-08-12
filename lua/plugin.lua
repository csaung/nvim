require("packer").startup(function()
    use 'wbthomason/packer.nvim'
    use {'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'BurntSushi/ripgrep'},
            {'nvim-lua/popup.nvim'}
        }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'romgrk/barbar.nvim'
    -- use 'vim-scripts/c.vim'
    use 'APZelos/blamer.nvim'
    -- use 'rust-lang/rust.vim'
    use {'fatih/vim-go', run = ':GoUpdateBinaries'}
    use 'olimorris/onedarkpro.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'
    use {'L3MON4D3/LuaSnip',
        requires = {
            {'rafamadriz/friendly-snippets'}
        }
    }
    use 'tpope/vim-commentary'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'cohama/lexima.vim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-lualine/lualine.nvim'
    use 'simrat39/symbols-outline.nvim'
    use 'akinsho/toggleterm.nvim'
    use {'mrjones2014/smart-splits.nvim'}
    use {'jdhao/better-escape.vim', event = 'InsertEnter'}
    use {"lukas-reineke/indent-blankline.nvim"}
    use {'lewis6991/gitsigns.nvim', tag = 'release'}
    use "nathom/filetype.nvim"
    use "windwp/nvim-ts-autotag"
    use({
    "aserowy/tmux.nvim",
    config = function()
        require("tmux").setup({
            navigation = {
                -- enables default keybindings (C-hjkl) for normal mode
                enable_default_keybindings = true,
            },
            resize = {
                -- enables default keybindings (A-hjkl) for normal mode
                enable_default_keybindings = true,
            }
        })
    end
})
end)

local ok, packer = pcall(require, "packer")

local packerBootstrap = nil

if not ok then
    print('packer package manager not installed, would you like to install it? (y/n)\n')
    local choice = io.read(1)
    if choice == 'n' then return
    elseif choice ~= 'y' then
        print('invalid choice, terminating\n')
    else
        local path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
        if vim.fn.empty(vim.fn.glob(path)) > 0 then
            packerBootstrap = vim.fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', path })
            vim.cmd [[packadd packer.nvim]]
        end
    end
end

packer.startup(function()
    use 'wbthomason/packer.nvim'
    use { 'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'BurntSushi/ripgrep' },
            { 'nvim-lua/popup.nvim' }
        }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'romgrk/barbar.nvim'
    use 'APZelos/blamer.nvim'
    use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
    use 'olimorris/onedarkpro.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'
    use { 'L3MON4D3/LuaSnip',
        requires = {
            { 'rafamadriz/friendly-snippets' }
        }
    }
    use 'tpope/vim-commentary'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'cohama/lexima.vim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-lualine/lualine.nvim'
    use 'simrat39/symbols-outline.nvim'
    use 'akinsho/toggleterm.nvim'
    use { 'jdhao/better-escape.vim', event = 'InsertEnter' }
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'lewis6991/gitsigns.nvim', tag = 'release' }
    use 'nathom/filetype.nvim'
    use 'windwp/nvim-ts-autotag'
    use 'glepnir/lspsaga.nvim'
    use 'aserowy/tmux.nvim'
    if packerBootstrap then packer.sync() end
end)

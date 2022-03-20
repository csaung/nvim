-- tmux, neovim, ripgrep, ctags, packer, powerline
vim.opt.laststatus = 3

require('default')
require('plugin')
require('keymap')
require('configs.nvim-tree')
require('configs.nvim-treesitter')
require('configs.nvim-cmp')
require('configs.nvim-lsp')
require('configs.nvim-lsp-installer')
require('configs.lualine')
require('configs.luasnip')
require('configs.telescope')
require('configs.blamer')
require('configs.color')
require('configs.toggleterm')
require('configs.gitsigns')

vim.g.mapleader = ';'
local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

-- telescope
map('n', '<leader>ff', ':Telescope find_files<Cr>', opts)
map('n', '<leader>fo', ':Telescope oldfiles<Cr>', opts)
map('n', '<leader>fw', ':Telescope live_grep<Cr>', opts)
map('n', '<leader>fb', ':Telescope buffers<Cr>', opts)
map('n', '<leader>fh', ':Telescope help_tags<Cr>', opts)
map('n', '<leader>m', ':Telescope man_pages<Cr>', opts)

-- quickfix list
map('n', '<leader>[', ':copen<Cr>', opts)
map('n', '<leader>]', ':cclose<Cr>', opts)
map('n', '<leader>e', ':NvimTreeFindFileToggle<Cr>', opts)

-- package manager
map('n', '<leader>ps', ':PackerSync<cr>', opts)

-- symbols outline
map('n', '<leader>so', ':SymbolsOutline<cr>', opts)

-- toggle terminal
map('n', '<c-\\>', '<cmd>ToggleTerm<CR>', opts)
map('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', opts)
map('n', '<leader>th', '<cmd>ToggleTerm size=10 direction=horizontal<cr>', opts)
map('n', '<leader>tv', '<cmd>ToggleTerm size=80 direction=vertical<cr>', opts)

function _G.set_terminal_keymaps()
  local terminal_opts = {noremap = true}
  local mapBuf = vim.api.nvim_buf_set_keymap
  mapBuf(0, 't', '<esc>', [[<C-\><C-n>]], terminal_opts)
  mapBuf(0, 't', 'jk', [[<C-\><C-n>]], terminal_opts)
  mapBuf(0, 't', '<c-h>', [[<c-\><c-n><c-w>h]], terminal_opts)
  mapBuf(0, 't', '<c-j>', [[<c-\><c-n><c-w>j]], terminal_opts)
  mapBuf(0, 't', '<c-k>', [[<c-\><c-n><c-w>k]], terminal_opts)
  mapBuf(0, 't', '<c-l>', [[<c-\><c-n><c-w>l]], terminal_opts)
end

-- lspsaga
map('n', '<leader>ca', '<cmd>Lspsaga code_action<cr>', opts)
map('v', '<leader>ca', '<cmd><c-u>Lspsaga range_code_action<cr>', opts)
map('n', '<leader>lf', '<cmd>Lspsaga lsp_finder<cr>', opts)
map('n', '<leader>pd', '<cmd>Lspsaga preview_definition<cr>', opts)
map('n', '<leader>rn', '<cmd>Lspsaga rename<cr>', opts)
map('n', '<leader>to', '<cmd>LSoutlineToggle<cr>', opts)

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.g.mapleader = ";"
local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

map("n", "<Leader>ff", ":Telescope find_files<Cr>", opts)
map("n", "<Leader>fo", ":Telescope oldfiles<Cr>", opts)
map("n", "<Leader>fw", ":Telescope live_grep<Cr>", opts)
map("n", "<Leader>fb", ":Telescope buffers<Cr>", opts)
map("n", "<Leader>fh", ":Telescope help_tags<Cr>", opts)
map("n", "<Leader>m", ":Telescope man_pages<Cr>", opts)
map("n", "<Leader>[", ":copen<Cr>", opts)
map("n", "<Leader>]", ":cclose<Cr>", opts)
map("n", "<Leader>e", ":NvimTreeFindFileToggle<Cr>", opts)

-- map('n', '<A-h>', "<cmd>lua require('smart-splits').resize_left()<cr>", opts)
-- map('n', '<A-j>', "<cmd>lua require('smart-splits').resize_down()<cr>", opts)
-- map('n', '<A-k>', "<cmd>lua require('smart-splits').resize_up()<cr>", opts)
-- map('n', '<A-l>', "<cmd>lua require('smart-splits').resize_right()<cr>", opts)
-- map('n', '<C-h>', "<cmd>lua require('smart-splits').move_cursor_left()<cr>", opts)
-- map('n', '<C-j>', "<cmd>lua require('smart-splits').move_cursor_down()<cr>", opts)
-- map('n', '<C-k>', "<cmd>lua require('smart-splits').move_cursor_up()<cr>", opts)
-- map('n', '<C-l>', "<cmd>lua require('smart-splits').move_cursor_right()<cr>", opts)

map("n", "<Leader>ps", ":PackerSync<cr>", opts)

map("n", "<Leader>so", ":SymbolsOutline<cr>", opts)

map("n", "<C-\\>", "<cmd>ToggleTerm<CR>", opts)
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", opts)
map("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", opts)
map("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", opts)

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

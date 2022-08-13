local ok, telescope = pcall(require, 'telescope')
if not ok then
    print('telescope failed to load\n')
    return
end
telescope.load_extension('fzf')

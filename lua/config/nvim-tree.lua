local ok, nvimTree = pcall(require, 'nvim-tree')
if not ok then
    print('nvim-tree failed to load\n')
    return
end
nvimTree.setup()

local ok, gitsigns = pcall(require, 'gitsigns')

if not ok then
    print('gitsigns failed to load\n')
end

gitsigns.setup()

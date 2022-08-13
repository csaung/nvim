local ok, nvimTsAutoTag = pcall(require, 'nvim-ts-autotag')
if not ok then
    print('nvim-ts-autotag failed to load\n')
    return
end
nvimTsAutoTag.setup()

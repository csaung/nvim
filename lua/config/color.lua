local ok, oneDarkPro = pcall(require, 'onedarkpro')

if not ok then
    print('color theme failed to load\n')
    return
end

oneDarkPro.setup({
    styles = {
        comments = 'italic',
    },
    options = {
        undercurl = true,
    }
})

oneDarkPro.load()

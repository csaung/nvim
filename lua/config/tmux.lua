local ok, tmux = pcall(require, 'tmux')

if not ok then
    print('tmux plugin failed to load\n')
    return
end

tmux.setup({
    navigation = {
        enable_default_keybindings = true,
    },
    resize = {
        enable_default_keybindings = true,
    }
})

local ok, treesitterConfigs = pcall(require, 'nvim-treesitter.configs')
if not ok then
    print('nvim-treesitter.configs failed to load\n')
    return
end

treesitterConfigs.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = false,
        disable = {},
    },
    ensure_installed = {
        "c",
        "cpp",
        "python",
        "rust",
        "go",
        "typescript",
        "javascript",
    }
}

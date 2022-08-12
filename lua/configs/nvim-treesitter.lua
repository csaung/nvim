require'nvim-treesitter.configs'.setup {
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


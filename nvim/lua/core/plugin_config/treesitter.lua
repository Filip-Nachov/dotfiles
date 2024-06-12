require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "python", "cpp", "rust", "vim", "java", "javascript"},
    
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}

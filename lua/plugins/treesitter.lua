return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "go",
                    "lua",
                    "vim",
                    "vimdoc",
                    "query",
                    "bash",
                    "json",
                    "yaml",
                },

                highlight = {
                    enable = true,
                },

                indent = {
                    enable = false,
                },
            })
        end,
    },
}

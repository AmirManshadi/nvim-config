return {
    {
        "folke/which-key.nvim",

        event = "VeryLazy",

        opts = {
            delay = 500,

            preset = "modern",

            spec = {
                { "<leader>f", group = "Find" },
                { "<leader>g", group = "Git" },
                { "<leader>l", group = "Language" },
                { "<leader>w", desc = "Save file" },
                { "<leader>q", desc = "Quit window" },
                { "<leader>e", desc = "File explorer" },
            },
        },
    },
}

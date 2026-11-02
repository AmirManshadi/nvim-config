return {
    {
        "nvim-telescope/telescope.nvim",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },

        cmd = "Telescope",

        opts = {
            defaults = {
                prompt_prefix = "  ",
                selection_caret = "❯ ",
                path_display = { "truncate" },
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.55,
                    },
                },
            },
        },
    },
}

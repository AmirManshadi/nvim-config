-- Go Language Server Configuration

vim.lsp.config("gopls", {
    cmd = { "gopls" },

    filetypes = {
        "go",
        "gomod",
        "gowork",
        "gotmpl",
    },

    root_markers = {
        "go.work",
        "go.mod",
        ".git",
    },

    settings = {
        gopls = {
            -- Enable additional static analysis
            analyses = {
                unusedparams = true,
                shadow = true,
                nilness = true,
                unusedwrite = true,
                useany = true,
            },

            -- Static-check integration
            staticcheck = true,

            -- Formatting
            gofumpt = true,

            -- Complete unimported packages
            completeUnimported = true,

            -- Use semantic tokens
            semanticTokens = true,
        },
    },
})

-- Enable gopls
vim.lsp.enable("gopls")

-- LSP keymaps
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {
        clear = true,
    }),

    callback = function(event)
        local opts = {
            buffer = event.buf,
            silent = true,
        }

        local map = vim.keymap.set

        -- Navigation
        map("n", "gd", vim.lsp.buf.definition, {
            buffer = event.buf,
            desc = "Go to definition",
        })


        map("n", "gD", vim.lsp.buf.declaration, {
            buffer = event.buf,
            desc = "Go to declaration",
        })

        map("n", "gr", vim.lsp.buf.references, {
            buffer = event.buf,
            desc = "Find references",
        })

        map("n", "gi", vim.lsp.buf.implementation, {
            buffer = event.buf,
            desc = "Go to implementation",
        })

        -- Documentation
        map("n", "K", vim.lsp.buf.hover, {
            buffer = event.buf,
            desc = "Show documentation",
        })

        -- Refactoring
        map("n", "<leader>lr", vim.lsp.buf.rename, {
            buffer = event.buf,
            desc = "Rename symbol",
        })

        map("n", "<leader>la", vim.lsp.buf.code_action, {
            buffer = event.buf,
            desc = "Code action",
        })

        -- Diagnostics
        map("n", "[d", vim.diagnostic.goto_prev, {
            buffer = event.buf,
            desc = "Previous diagnostic",
        })

        map("n", "]d", vim.diagnostic.goto_next, {
            buffer = event.buf,
            desc = "Next diagnostic",
        })

        map("n", "<leader>ld", vim.diagnostic.open_float, {
            buffer = event.buf,
            desc = "Show diagnostic",
        })
    end,
})


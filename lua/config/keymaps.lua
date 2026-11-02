local map = vim.keymap.set

-- Clear search highlighting.
map("n", "<Esc>", "<cmd>nohlsearch<CR>", {
    desc = "Clear search highlighting",
})

-- Window navigation.
map("n", "<C-h>", "<C-w>h", {
    desc = "Move to left window",
})

map("n", "<C-j>", "<C-w>j", {
    desc = "Move to lower window",
})

map("n", "<C-k>", "<C-w>k", {
    desc = "Move to upper window",
})

map("n", "<C-l>", "<C-w>l", {
    desc = "Move to right window",
})

-- Save and quit.
map("n", "<leader>w", "<cmd>write<CR>", {
    desc = "Save file",
})

map("n", "<leader>q", "<cmd>quit<CR>", {
    desc = "Quit window",
})

-- Telescope: fuzzy finding.

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
    desc = "Find files",
})

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
    desc = "Search project text",
})

map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {
    desc = "Find open buffers",
})

map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {
    desc = "Search help tags",
})

-- Neo-tree: file navigation.

map("n", "<leader>ee", "<cmd>Neotree toggle<CR>", {
    desc = "Toggle file explorer",
})

map("n", "<leader>ef", "<cmd>Neotree focus<CR>", {
    desc = "Focus file explorer",
})

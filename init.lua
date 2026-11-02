-- Set the global leader keys before loading plugins.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load core configuration.
require("config.options")
require("config.keymaps")

-- Initialize the plugin manager.
require("config.lazy")

-- Initialize lsp config
require("config.lsp")

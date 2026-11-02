 -- Line numbers
 vim.opt.number = true
 vim.opt.relativenumber = true

 -- Indentation
 vim.opt.expandtab = true
 vim.opt.shiftwidth = 4
 vim.opt.tabstop = 4
 vim.opt.softtabstop = 4

 -- Search
 vim.opt.ignorecase = true
 vim.opt.smartcase = true

 -- Interface
 vim.opt.termguicolors = true
 vim.opt.signcolumn = "yes"
 vim.opt.cursorline = true

 -- Editing
 vim.opt.mouse = "a"
 vim.opt.clipboard = "unnamedplus"
 vim.opt.undofile = true

 -- Splits
 vim.opt.splitright = true
 vim.opt.splitbelow = true

 -- Scrolling
 vim.opt.scrolloff = 8
 vim.opt.sidescrolloff = 8

 -- Completion behavior
 vim.opt.completeopt = {
	 "menu",
	 "menuone",
	 "noselect",
 }

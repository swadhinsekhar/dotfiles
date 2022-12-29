local opt = vim.opt -- for conciseness

-- line numbers
-- opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- apprearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")
opt.mouse = "a"
opt.go = "a"
-- opt.clipboard = unnamedplus
-- opt.clipboard = unnamedplus

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

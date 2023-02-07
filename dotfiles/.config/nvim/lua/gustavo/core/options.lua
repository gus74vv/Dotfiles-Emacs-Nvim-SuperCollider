local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.numberwidth = 2
opt.signcolumn = "yes"

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smarttab = true
opt.list = true
opt.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"

-- line wrapping
opt.wrap = true -- disable line wrapping
opt.breakindent = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- Number of screen lines to keep above and below the cursor
opt.scrolloff = 8

-- Undo and backup options
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.swapfile = false

-- Remember 50 items in commandline history
opt.history = 50



-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word


opt.mouse = "a"

opt.guioptions = egmrti

vim.g.tidal_boot = "/Users/gustavo/.cabal/store/ghc-9.2.4/tdl-1.9.2-4716c1ef/share/BootTidal.hs"



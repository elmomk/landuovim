-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- This file is automatically loaded by plugins.config

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.winbar = "%=%m %f"
opt.autowrite = true -- Enable auto write
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3 -- Hide * markup for bold and italic
-- opt.conceallevel = 0 -- so that `` is visible in markdown files
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.formatoptions = "jcroqlnt" -- tcqj
-- opt.formatoptions:remove({ "c", "r", "o" }) -- This is a sequence of letters which describes how automatic formatting is to be done
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
-- opt.laststatus = 0
opt.laststatus = 3 -- only the last window will always have a status line
opt.list = true -- Show some invisible characters (tabs...
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.relativenumber = true -- set numbered lines
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.scrolloff = 4 -- Lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.shortmess:append({ W = true, I = true, c = true })
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap

if vim.fn.has("nvim-0.9.0") == 1 then
  opt.splitkeep = "screen"
  opt.shortmess:append({ C = true })
end

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
opt.backup = false -- creates a backup file
opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
opt.fileencoding = "utf-8" -- the encoding written to a file
opt.hlsearch = true -- highlight all matches on previous search pattern
opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
opt.showtabline = 0 -- always show tabs
opt.swapfile = false -- creates a swapfile
opt.termguicolors = true -- set term gui colors (most terminals support this)
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.showcmd = false -- hide (partial) command in the last line of the screen (for performance)
opt.ruler = false -- hide the line and column number of the cursor position
opt.numberwidth = 4 -- minimal number of columns to use for the line number {default 4}
opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
opt.fillchars.eob = " " -- show empty lines at the end of a buffer as ` ` {default `~`}
opt.whichwrap:append("<,>,[,],h,l") -- keys allowed to move to the previous/next line when the beginning/end of line is reached
-- opt.iskeyword:append("-") -- treats words with `-` as single words
opt.linebreak = true
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

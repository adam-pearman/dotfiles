vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true

-- Complete the longest common match, and allow tabbing the results to fully complete them.
vim.opt.wildmode = 'longest:full,full'
vim.opt.completeopt = 'menuone,longest,preview'

vim.opt.title = true

-- Enable mouse for all modes.
vim.opt.mouse = 'a'

vim.opt.termguicolors = true

vim.opt.spell = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable the below listchars.
vim.opt.list = true
vim.opt.listchars = { tab = '‣ ', trail = '•' }

-- Remove the ~ from the end of buffer.
vim.opt.fillchars:append({ eob = ' ' })

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Use system clipboard.
vim.opt.clipboard = 'unnamedplus'

-- Ask for confirmation instead of erroring.
vim.opt.confirm = true

-- Keep sign column showing
vim.opt.signcolumn = 'yes:2'

-- Persistent undo.
vim.opt.undofile = true

-- Automatically save a backup file.
vim.opt.backup = true

-- Keep backups out of the current directory.
vim.opt.backupdir:remove('.')

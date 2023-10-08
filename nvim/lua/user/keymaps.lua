-- Space is my leader.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided.
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Reselect visual selection after indenting.
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Maintain the cursor position when yanking a visual selection.
vim.keymap.set('v', 'y', 'myy`y')

-- Disable annoying command line typo.
vim.keymap.set('n', 'q:', ':q')

-- Paste replace visual selection without copying it.
vim.keymap.set('v', 'p', '"_dP')

-- Easy insertion of a trailing ; or , from insert mode.
vim.keymap.set('i', ';;', '<Esc>A;')
vim.keymap.set('i', ',,', '<Esc>A,')

-- Quickly clear search highlighting.
vim.keymap.set('n', '<Leader>k', ':nohlsearch<CR>')

-- Open the current file in the default program.
vim.keymap.set('n', '<Leader>x', ':!open %<CR><CR>') --mac
-- vim.keymap.set('n', '<Leader>x', ':!xdg-open %<CR><CR>') --linux

-- Move lines up and down.
-- vim.keymap.set('i', '<C-j>', '<Esc>:move .+1<CR>==gi')
-- vim.keymap.set('i', '<C-k>', '<Esc>:move .-2<CR>==gi')
-- vim.keymap.set('n', '<C-j>', ':move .+1<CR>==')
-- vim.keymap.set('n', '<C-k>', ':move .-2<CR>==')
vim.keymap.set('v', 'J', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":move '<-2<CR>gv=gv")

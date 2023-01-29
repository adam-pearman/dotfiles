vim.keymap.set('n', '§', ':FloatermToggle<CR>')
vim.keymap.set('t', '§', '<C-\\><C-n>:FloatermToggle<CR>')

vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8

vim.cmd([[
  highlight link Floaterm CursorLine
  highlight link FloatermBorder CursorLineBg
]])

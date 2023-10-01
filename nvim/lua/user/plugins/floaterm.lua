return {
  'voldikss/vim-floaterm',
  keys = {
    { '§', ':FloatermToggle<CR>' },
    { '§', '<C-\\><C-n>:FloatermToggle<CR>', mode = 't' },
  },
  init = function()
    vim.g.floaterm_width = 0.8
    vim.g.floaterm_height = 0.8
  end,
  config = true,
}

vim.keymap.set('n', '<Leader>tn', ':TestNearest<CR>')
vim.keymap.set('n', '<Leader>tf', ':TestFile<CR>')
vim.keymap.set('n', '<Leader>ts', ':TestSuite<CR>')
vim.keymap.set('n', '<Leader>tl', ':TestLast<CR>')
vim.keymap.set('n', '<Leader>tv', ':TestVisit<CR>')
vim.keymap.set('n', '<Leader>tc', ':TestSuite --coverage<CR>')
vim.keymap.set('n', '<Leader>tr', ':TestSuite --retry<CR>')

vim.cmd([[
  function! FloatermStrategy(cmd)
    execute 'silent FloatermKill'
    execute 'FloatermNew! '.a:cmd
  endfunction

  let g:test#custom_strategies = {'floaterm': function('FloatermStrategy')}
  let g:test#strategy = 'floaterm'
  let test#php#pest#executable = 'sa test'
]])
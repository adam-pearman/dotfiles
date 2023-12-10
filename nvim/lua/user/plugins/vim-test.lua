return {
  'vim-test/vim-test',
  keys = {
    { '<Leader>tn', ':TestNearest<CR>' },
    { '<Leader>tf', ':TestFile<CR>' },
    { '<Leader>ts', ':TestSuite<CR>' },
    { '<Leader>tl', ':TestLast<CR>' },
    { '<Leader>tv', ':TestVisit<CR>' },
    { '<Leader>tc', ':TestSuite --coverage<CR>' },
    { '<Leader>tr', ':TestSuite --retry<CR>' },
    { '<Leader>tp', ':TestSuite --parallel<CR>' },
  },
  config = function()
    vim.cmd([[
      let g:test#strategy = 'vimux'
      let test#php#pest#executable = 'sa test --env=testing'
    ]])
  end
}

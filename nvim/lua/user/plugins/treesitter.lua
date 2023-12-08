return {
  'nvim-treesitter/nvim-treesitter',
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = function ()
    local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = {"src/parser.c"},
        branch = "main",
      },
      filetype = "blade"
    }

    local blade_group = vim.api.nvim_create_augroup("BladeFiltypeRelated", { clear = true })
    vim.api.nvim_create_autocmd(
    {
        "BufNewFile",
        "BufRead",
    },
    {
        pattern = "*.blade.php",
        group = blade_group,
        callback = function()
          vim.opt.filetype = "blade"
        end,
    }
)

    local configs = require('nvim-treesitter.configs')

    configs.setup({
      ensure_installed = {
        "php",
        "lua",
        "python",
        "vue",
        "typescript",
        "javascript",
        "yaml",
        "sql",
        "json",
        "html",
        "css",
        "gitignore",
        "dockerfile",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      context_commentstring = {
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['if'] = '@function.inner',
            ['af'] = '@function.outer',
            ['ia'] = '@parameter.inner',
            ['aa'] = '@parameter.outer',
          },
        },
      },
    })
  end,
}

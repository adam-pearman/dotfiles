return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    style="night",
    on_highlights = function(hl, c)
      local prompt = "#222533"

      -- Spelling
      hl.SpellBad = {
        undercurl = true,
        sp = '#7F3A43',
      }

      -- Telescope
      hl.TelescopeNormal = {
        bg = c.bg_dark,
        fg = c.fg_dark,
      }
      hl.TelescopeBorder = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }
      hl.TelescopePromptNormal = {
        bg = prompt,
      }
      hl.TelescopePromptBorder = {
        bg = prompt,
        fg = prompt,
      }
      hl.TelescopePromptTitle = {
        bg = c.bg,
        fg = c.fg_dark,
        -- bg = prompt,
        -- fg = '#ffffff',
      }
      hl.TelescopePreviewTitle = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }
      hl.TelescopeResultsTitle = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }

      -- Lualine
      hl.StatusLineNonText = {
        bg = c.bg_dark,
        fg = c.fg_gutter,
      }

      -- Indent
      hl.IndentBlanklineChar = {
        fg = c.bg_highlight,
      }

      -- Copilot
      hl.CopilotSuggestion = {
        fg = c.comment,
      }

      -- NvimTree
      hl.NvimTreeIndentMarker = {
        fg = c.bg_highlight,
      }
      hl.NvimTreeOpenedFile = {
        fg = c.fg,
        bold = true
      }
    end,
  },
  config = function (plugin, opts)
    require('tokyonight').setup(opts)

    vim.cmd('colorscheme tokyonight')
  end,
}

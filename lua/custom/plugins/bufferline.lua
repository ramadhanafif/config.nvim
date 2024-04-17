return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  event = 'BufReadPre',
  opts = {
    options = {
      offsets = {
        {
          filetype = 'NvimTree',
        },
      },
    },
  },
  config = function()
    local bufferline = require 'bufferline'
    print 'Hello bufferline'
    bufferline.setup {
      options = {
        style_preset = {
          bufferline.style_preset.no_italic,
          bufferline.style_preset.no_bold,
        },
        separator_style = 'slant',
      },
    }

    -- Buffer switching
    vim.keymap.set('n', '<S-h>', function()
      bufferline.cycle(-1)
    end, { desc = 'Move focus to the left window' })
    vim.keymap.set('n', '<S-l>', function()
      bufferline.cycle(1)
    end, { desc = 'Move focus to the left window' })
  end,
}

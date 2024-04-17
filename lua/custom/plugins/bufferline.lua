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
    bufferline.setup {
      options = {
        style_preset = {
          bufferline.style_preset.no_italic,
          bufferline.style_preset.no_bold,
        },
        separator_style = 'slant',
      },
    }
  end,

  keys = {
    { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Previout buffer' } },
    { '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer' } },
  },
}

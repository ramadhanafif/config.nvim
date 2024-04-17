-- local tt = require 'toggleterm'

-- local function toggleTermHorizontal()
--   tt.toggle(r, size?, dir?, direction?, name?)
-- end

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {},
  keys = {
    { '<leader>th', '<cmd>ToggleTerm<cr>', desc = 'Toggle term horizontal' },
  },
}

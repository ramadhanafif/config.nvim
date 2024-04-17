return {
  'goolord/alpha-nvim',
  config = function()
    require('alpha.themes.dashboard').section.footer.val = require 'alpha.fortune'()
    require('alpha').setup(require('alpha.themes.dashboard').opts)

    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.val = {
      [[                               __                ]],
      [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
      [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
      [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
      [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
      [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    }
    dashboard.section.buttons.val = {
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('q', '󰅚  Quit NVIM', ':qa<CR>'),
      dashboard.button('SPC s s', 'Open Session Manager', '<cmd>SessionManager<cr>'),
      dashboard.button('SPC s l', 'Open Last Session', '<cmd>SessionManager load_last_session<cr>'),
    }
    -- local handle = io.popen 'fortune | cowsay -W 100'
    -- local fortune = handle:read '*a'
    -- handle:close()
    -- dashboard.section.footer.val = fortune

    dashboard.config.opts.noautocmd = true

    vim.cmd [[autocmd User AlphaReady echo 'ready']]

    alpha.setup(dashboard.config)
  end,
}

return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    view_options = {
      show_hidden = false,
    },
    config = function()
      local oil = require 'oil'
      oil.setup()
      vim.keymap.set('n', '-', oil.open)
    end,
  },
}

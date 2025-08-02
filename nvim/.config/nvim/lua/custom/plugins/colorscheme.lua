return {
  {
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require('rose-pine').setup {
        variant = 'auto',
        dark_variant = 'moon',
        styles = {
          transparency = true,
        },
      }

      vim.cmd 'colorscheme rose-pine'
    end,
  },
}

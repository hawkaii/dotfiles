return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require('tokyonight').setup {
        style = 'moon',
        transparent = true,
        styles = {
          sidebars = 'shadow',
          floats = 'transparent',
        },
      }

      vim.cmd 'colorscheme tokyonight'
    end,
  },
}

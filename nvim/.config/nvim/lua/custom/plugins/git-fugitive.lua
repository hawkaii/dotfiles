return {

  {
    'tpope/vim-fugitive',
    cmd = {
      'G',
      'Git',
      'Gblame',
      'Gbrowse',
      'Gedit',
      'Ggrep',
      'Glog',
      'Gmove',
      'Gremove',
      'Gstatus',
      'Gwrite',
    },
    keys = {
      '<leader>gs',
      '<leader>gb',
      '<leader>gl',
      '<leader>gc',
      '<leader>gd',
      '<leader>gw',
    },
    setup = function()
      vim.g.fugitive_no_maps = 1
    end,
  },
}

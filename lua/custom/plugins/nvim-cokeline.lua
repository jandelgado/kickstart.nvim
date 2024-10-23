return {
  {
    'willothy/nvim-cokeline',
    dependencies = {
      'nvim-lua/plenary.nvim', -- Required for v0.4.0+
      'nvim-tree/nvim-web-devicons', -- If you want devicons
      'stevearc/resession.nvim', -- Optional, for persistent history
    },
    keys = {
      { '<S-Tab>', '<Plug>(cokeline-focus-prev)', mode = 'n', desc = 'next buffer' },
      { '<Tab>', '<Plug>(cokeline-focus-next)', mode = 'n', desc = 'prev buffer' },
    },
    config = true,
  },
}

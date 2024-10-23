return {
  'ray-x/go.nvim',
  dependencies = { -- optional packages
    'ray-x/guihua.lua',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
    'mfussenegger/nvim-dap', -- Debug Adapter Protocol
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'theHamsta/nvim-dap-virtual-text',
  },
  config = function()
    require('go').setup()
  end,
  opts = {
    verbose = true,
    -- log_path = '~/tmp/go.log',
    lsp_cfg = true,
    goimports = 'gopls',
    gofmt = 'gopls',
    max_line_len = 80,
  },
  keys = {
    { '<leader>l', ':GoAlt<CR>', desc = 'Go alternative file', ft={"go"} },
    { '<leader>tf', ':GoTestFile<CR>', desc = 'Go test current file', ft={"go"} },
  },
  event = { 'CmdlineEnter' },
  ft = { 'go', 'gomod' },
  build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}

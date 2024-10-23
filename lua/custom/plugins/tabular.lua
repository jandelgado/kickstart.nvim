return {
  'godlygeek/tabular',
  { 
    -- TODO :TableFormat not working/avail
    'preservim/vim-markdown', -- JD change to camelcase, snake-case etc
    depends = {
      'godlygeek/tabular',
    },

    cmd = 'StartupTime',
    init = function()
      vim.g.vim_markdown_folding_disabled = 1
      vim.g.vim_markdown_conceal_code_blocks = 0
      vim.g.vim_markdown_follow_anchor = 1
      vim.g.vim_markdown_auto_insert_bullets = 0
      vim.g.vim_markdown_strikethrough = 1

      -- format lists correctly with `gq`
      -- see https://github.com/preservim/vim-markdown/issues/232
      vim.api.nvim_create_autocmd({
        'FileType',
      }, {
        pattern = '*.md',
        callback = function()
          vim.opt.formatoptions:remove 'q'
          vim.opt.formatlistpat = '^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+'
        end,
      })
    end,
  },
}

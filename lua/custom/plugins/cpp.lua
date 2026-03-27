return {
  {
    'p00f/clangd_extensions.nvim',
    ft = { 'c', 'cpp' },
    opts = {
      inlay_hints = {
        -- Show inlay hints inline (requires Neovim 0.10+)
        inline = true,
      },
      ast = {
        role_icons = vim.g.have_nerd_font and {
          type = '',
          declaration = '',
          expression = '',
          specifier = '',
          statement = '',
          ['template argument'] = '',
        } or {},
        kind_icons = vim.g.have_nerd_font and {
          Compound = '',
          Recovery = '',
          TranslationUnit = '',
          PackExpansion = '',
          TemplateTypeParm = '',
          TemplateTemplateParm = '',
          TemplateParamObject = '',
        } or {},
      },
    },
    keys = {
      { '<leader>ch', '<cmd>ClangdSwitchSourceHeader<cr>', ft = { 'c', 'cpp' }, desc = '[C]++ Switch [H]eader/Source' },
    },
  },
}
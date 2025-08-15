return {
  'nvim-neorg/neorg',
  lazy = false,
  version = '*',
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {},
        ['core.dirman'] = {
          config = {
            workspaces = {
              secondBrain = '~/Second-Brain',
            },
            default_workspace = 'secondBrain',
          },
        },
        ['core.journal'] = {
          config = {},
        },
        ['core.esupports.metagen'] = {
          config = {},
        },
      },
    }
    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}

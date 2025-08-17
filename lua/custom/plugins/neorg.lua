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

    vim.keymap.set('n', '<leader>jt', ':Neorg journal today<cr>', { desc = '[T]odays [J]ournal' })
    vim.keymap.set('n', '<leader>jf', ':Neorg journal tomorrow<cr>', { desc = '[F]uture [J]ournal' })
    vim.keymap.set('n', '<leader>jy', ':Neorg journal yesterday<cr>', { desc = '[Y]esterday [J]ournal' })
    vim.keymap.set('n', '<leader>ji', ':Neorg inject-metadata<cr>', { desc = '[I]nject Metadata' })
    -- vim.keymap.set('n', '<leader>sk', ':Neorg journal today' , { desc = '[T]odays [J]ournal' })
  end,
}

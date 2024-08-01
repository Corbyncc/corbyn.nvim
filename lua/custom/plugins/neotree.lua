return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  -- This breaks Neotrees default opening behavior and netrw hijacking for some reason
  -- keys = {
  --   { '<leader>fe', '<CMD>Neotree toggle<CR>', desc = 'Toggle Neotree' },
  -- },
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'open_default',
    },
  },
}

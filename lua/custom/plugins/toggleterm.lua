return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup()

    -- Create an auto command group
    local augroup_id = vim.api.nvim_create_augroup('ToggleTerm Mappings', { clear = true })

    -- Auto command for TerminalEnter event
    vim.api.nvim_create_autocmd('TermOpen', {
      pattern = 'term://*toggleterm#*',
      callback = function()
        vim.cmd 'tnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>'
      end,
      group = augroup_id,
    })

    -- Mappings for normal and insert modes
    vim.api.nvim_set_keymap('n', '<A-t>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('i', '<A-t>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>', { noremap = true, silent = true })

    return true
  end,
}

return {
  {
    'numToStr/FTerm.nvim',
    keys = {
      { '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>' },
      { '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', mode = 't' },
    },
  },
}

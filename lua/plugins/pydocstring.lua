return {
  "heavenshell/vim-pydocstring",
  build = "make install",  -- only needed for better performance
  ft = { "python" },
  config = function()
    vim.g.pydocstring_formatter = 'google'  -- or 'numpy', 'rest'
    vim.g.pydocstring_doq_path = '/home/mehrdad/Development/.venv/bin/doq'
    vim.api.nvim_set_keymap('n', '<leader>rD', ':Pydocstring<CR>', { noremap = true, silent = true })
  end,
}

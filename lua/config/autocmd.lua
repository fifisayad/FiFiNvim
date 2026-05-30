vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function(event)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = event.buf,
      callback = function()
        vim.cmd("PyrightOrganizeImports")
      end,
    })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function(event)
    vim.keymap.set("n", "<leader>w", function()
      vim.cmd.write()
      vim.cmd("PyrightOrganizeImports")
      vim.cmd.write()
    end, {
      buffer = event.buf,
      desc = "Save and run PyrightOrganizeImports",
    })
  end,
})


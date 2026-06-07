return {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      require("git-conflict").setup({
        default_mappings = false,
        default_commands = true,
        disable_diagnostics = false,
        highlights = {
          incoming = "DiffAdd",
          current = "DiffText",
        },
      })
      -- Buffer-local keys on conflict detection — uses <Leader>g prefix to avoid
      -- clashing with Vim's 'c' (change) operator
      vim.api.nvim_create_autocmd("User", {
        pattern = "GitConflictDetected",
        callback = function()
          local map = function(keys, plug, desc)
            vim.keymap.set("n", keys, plug, { buffer = true, silent = true, desc = desc })
          end
          map("<Leader>go", "<Plug>(git-conflict-ours)",   "Conflict: Ours")
          map("<Leader>gt", "<Plug>(git-conflict-theirs)", "Conflict: Theirs")
          map("<Leader>gb", "<Plug>(git-conflict-both)",   "Conflict: Both")
          map("<Leader>g0", "<Plug>(git-conflict-none)",   "Conflict: None")
          map("[x",        "<Plug>(git-conflict-prev)",   "Conflict: Previous")
          map("]x",        "<Plug>(git-conflict-next)",   "Conflict: Next")
        end,
      })
    end,
  }

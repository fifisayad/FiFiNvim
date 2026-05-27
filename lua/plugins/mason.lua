-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")

      require("mason-lspconfig").setup({
        ensure_installed = { "pyright" },
        automatic_installation = true,
      })

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({})
        end,

        ["pyright"] = function()
          lspconfig.pyright.setup({
            root_dir = util.root_pattern(
              "pyproject.toml",
              "setup.py",
              "setup.cfg",
              "requirements.txt",
              ".git"
            ),
            settings = {
              python = {
                analysis = {
                  autoSearchPaths = true,
                  useLibraryCodeForTypes = true,
                  diagnosticMode = "workspace",
                },
              },
            },
          })
        end,
      })
    end,
  },
}
---@type LazySpec
-- return {
--   -- use mason-tool-installer for automatically installing Mason packages
--   {
--     "WhoIsSethDaniel/mason-tool-installer.nvim",
--     -- overrides `require("mason-tool-installer").setup(...)`
--     opts = {
--       -- Make sure to use the names found in `:Mason`
--       ensure_installed = {
--         -- install language servers
--         "lua-language-server",
--
--         -- install formatters
--         "stylua",
--
--         -- install debuggers
--         "debugpy",
--
--         -- install any other package
--         "tree-sitter-cli",
--       },
--     },
--   },
-- }

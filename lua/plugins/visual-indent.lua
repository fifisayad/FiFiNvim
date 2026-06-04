return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        v = {
          [">"] = { ">gv", desc = "Indent right and reselect" },
          ["<"] = { "<gv", desc = "Indent left and reselect" },
          ["("] = { "c()<Esc>hp", desc = "Wrap selection in parentheses" }
        },
        x = {
          [">"] = { ">gv", desc = "Indent right and reselect" },
          ["<"] = { "<gv", desc = "Indent left and reselect" },
          ["("] = { "c()<Esc>hp", desc = "Wrap selection in parentheses" },
        },
      },
    },
  },
}

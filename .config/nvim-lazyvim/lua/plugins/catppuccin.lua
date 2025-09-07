return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = true, -- activer la transparence
    integrations = {
      alpha = true,
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
      notify = true,
      mini = true,
    },
   custom_highlights = function(colors)
      return {
        AlphaHeader  = { fg = colors.mauve, style = { "bold" } },
        AlphaButtons = { fg = colors.blue },
        AlphaFooter  = { fg = colors.pink },
      }
     end,
  },
}

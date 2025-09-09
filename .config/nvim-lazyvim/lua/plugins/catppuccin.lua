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
        SnacksDashboardHeader = { fg = colors.mauve, style = { "bold" } },
        SnacksDashboardDesc = { fg = colors.text, style = { "bold" } },
        SnacksDashboardKey = { fg = colors.mauve },
        SnacksDashboardIcon = { fg = colors.mauve },
        SnacksDashboardTitle = { fg = colors.mauve, style = { "bold" } },
        SnacksDashboardFile = { fg = colors.text },
      }
    end,
  },
}

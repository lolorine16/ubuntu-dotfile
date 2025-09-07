
return {
  "goolord/alpha-nvim",
  init = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Ton ASCII art
    dashboard.section.header.val = {
	 "                                                                        ",
         "                                                                      ",
         "        ████ ██████           █████      ██                     ",
         "       ███████████             █████                             ",
         "       █████████ ███████████████████ ███   ███████████   ",
         "      █████████  ███    █████████████ █████ ██████████████   ",
         "     █████████ ██████████ █████████ █████ █████ ████ █████   ",
         "   ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
         "  ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
	 "                                                                        ",
	 "                                                                        ",
         "                           ❀ Reen-lo  eovim ❀                          ",
        }
     -- Couleur Catppuccin (mauve #cba6f7)
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#cba6f7", bold = true })
    dashboard.section.header.opts.hl = "AlphaHeader"

    alpha.setup(dashboard.opts)
  end,
}

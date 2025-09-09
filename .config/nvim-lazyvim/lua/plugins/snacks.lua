return {
  "folke/snacks.nvim",
  -- creer le highlight
  init = function()
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#cba6f7", bold = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = "#cdd6f4", bold = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = "#cba6f7", bold = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = "#cba6f7", bold = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardTitle", { fg = "#cba6f7", bold = true })
    vim.api.nvim_set_hl(0, "SnacksDashboardFile", { fg = "#cdd6f4" })
  end,
  opts = {
    dashboard = {
      -- on construit le header comme une liste de "sections textuelles"
      sections = (function()
        local lines = {
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
          "                          ❀ Reen-lo's  eovim ❀                        ",
        }
        local secs = {}
        -- chaque ligne avec hl "SnacksDashboardHeader"
        for _, ln in ipairs(lines) do
          table.insert(secs, { text = { ln, hl = "SnacksDashboardHeader" }, align = "center" })
        end

        -- boutons/menu par défaut fournis par snacks
        
        table.insert(secs, { padding = 1 })
        table.insert(secs, { section = "keys", gap = 1, padding = 2 })
        table.insert(secs, { icon = ' ', title = 'Recent Files', section = "recent_files", indent = 2, padding = 2, limit = 3 })
        --table.insert(secs, { section = "startup" })

        return secs
      end)(),
    },
  },
}



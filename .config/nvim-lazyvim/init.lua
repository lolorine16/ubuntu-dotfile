-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd.colorscheme "catppuccin"

-- ~/.config/nvim/init.lua
vim.opt.shortmess:append("I")  -- ignore certaines infos de lazy.nvim


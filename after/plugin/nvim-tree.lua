local nvimtree = require("nvim-tree")
local api = require("nvim-tree.api")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
nvimtree.setup()

-- OR setup with some options
nvimtree.setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
    relativenumber = true, -- Enable relative line numbers
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- remap
vim.keymap.set('n', '<leader>pv', function()
    api.tree.toggle()
end )

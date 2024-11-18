
vim.g.mapleader = " "

---
-- File manager
---
-- pv: file expoler
--
--- Telescope (after/plugin/telescope)
-- pp: Telescope find git
-- pf: Telescope find global
-- ps: Telescope grep
--
--- Harpoon (after/plugin/harpoon)
-- C-a add file to list
-- C-e open file list
-- C-h C-j C-k C-l open file 1-2-3-4
-- C-p C-n open previous and next file
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- use J and K to move selected text in visual mode up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J append the line below to the current line, keeping the cursor
-- in the same place
vim.keymap.set("n", "J", "mzJ`z")

-- Move page up and down, but keep cursor in the same place
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle while searching :/
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- select text, paste over and preserve the copied text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- system clipboard copy and paste
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- never enter Ex mode
vim.keymap.set("n", "Q", "<nop>")

-- tmux stuff, need to check
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format all document
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quick navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- very handy search and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


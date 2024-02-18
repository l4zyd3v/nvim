vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap
-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- keymap for markdown user stoies boilerplate

keymap.set(
  "n",
  "<leader>usrstr",
  "i\n\n## Description\n\n#### As a user, \n\n###### sp - storypoint\n\n##### Acceptance Criteria\n\n- ##### Criteria<esc>",
  { desc = "Insert user story template" }
)

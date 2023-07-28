vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()

vim.keymap.set('n', '<C-w><C-w>', '<Cmd>:NvimTreeToggle<CR>')
--vim.keymap.set("n", "gas", "<Cmd>lua require('textcase').current_word('to_snake_case')<CR>")

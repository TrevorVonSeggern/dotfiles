vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>r", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>p", "<cmd>bp<CR>")
vim.keymap.set("n", "<leader>n", "<cmd>bn<CR>")

vim.keymap.set("v", "<lt>", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<C-s>", "<cmd>wa<CR>")

-- ctrl backspace
vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', {noremap = true})

vim.keymap.set("n", "++", "<plug>NERDCommenterToggle")
vim.keymap.set("v", "++", "<plug>NERDCommenterToggle")

--vim.keymap.set("n", "<leader><space>ff", "<cmd>Telescope find_files")

--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--vim.keymap.set("v", "gau", "<Cmd>lua require('textcase').current_word('to_upper_case')<CR>")
vim.keymap.set("n", "gau", "<Cmd>lua require('textcase').current_word('to_upper_case')<CR>")
vim.keymap.set("n", "gal", "<Cmd>lua require('textcase').current_word('to_lower_case')<CR>")
vim.keymap.set("n", "gas", "<Cmd>lua require('textcase').current_word('to_snake_case')<CR>")

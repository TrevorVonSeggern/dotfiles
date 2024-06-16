vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<C-k>", "<cmd>m -2<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>m +1<CR>")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>r", ":IncRename ")
--vim.keymap.set("n", "<leader>r", function()
  --return ":IncRename " .. vim.fn.expand("<cword>")
--end, { expr = true })

vim.keymap.set("n", "<leader>h", function()
	vim.lsp.buf.hover()
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
vim.keymap.set("n", "gap", "<Cmd>lua require('textcase').current_word('to_pascal_case')<CR>")
vim.keymap.set("n", "gac", "<Cmd>lua require('textcase').current_word('to_camel_case')<CR>")
vim.keymap.set("n", "gas", "<Cmd>lua require('textcase').current_word('to_snake_case')<CR>")


vim.keymap.set("n", "<s-s>", "<Cmd>lua vim.lsp.buf.code_action()<CR>", {noremap=true})


vim.api.nvim_set_keymap('n', '<F8>', [[:lua require"dap".toggle_breakpoint()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F9>', [[:lua require"dap".continue()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F10>', [[:lua require"dap".step_over()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F11>', [[:lua require"dap".step_into()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F12>', [[:lua require"dap.ui.widgets".hover()<CR>]], { noremap = true })
--vim.api.nvim_set_keymap('n', '<F5>', [[:lua require"osv".launch({port = 8086})<CR>]], { noremap = true })

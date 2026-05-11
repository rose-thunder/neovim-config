vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = "a"

vim.o.breakindent = true

vim.o.undofile = true

vim.o.scrolloff = 10

vim.o.termguicolors = true

vim.o.signcolumn = "yes"

-- General keymaps
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quitall<CR>")
vim.keymap.set("n", "<leader>re", ":restart<CR>")

vim.keymap.set("n", "<leader>nn", function()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
    vim.wo.number = true
  else
    vim.wo.relativenumber = true
  end
end)

-- Plugins keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>")
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>")
vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>")
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>")
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>")

vim.keymap.set("n", "<leader>h", ":CloakToggle<CR>")

vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {})

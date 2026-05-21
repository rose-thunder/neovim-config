vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = "a"

vim.o.breakindent = true
vim.o.smartindent = true
vim.o.wrap = false

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

vim.keymap.set("n", "<leader>lw", function()
    if vim.wo.wrap then
        vim.wo.wrap = false
    else
        vim.wo.wrap = true
    end
end)

-- Plugins keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>xx", builtin.diagnostics, {})

vim.keymap.set("n", "<leader>h", ":CloakToggle<CR>")

vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {})

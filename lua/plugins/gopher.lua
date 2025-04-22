return {
  "olexsmir/gopher.nvim",
  ft = "go",
  -- branch "develop",
  build = function()
    vim.cmd([[silent! GoInstallDeps()]])
  end,
  config = function()
    local gopher = require("gopher")
    gopher.setup({})
    vim.keymap.set("n", "<leader>gsj", gopher.tags.add("json"))
    vim.keymap.set("n", "<leader>gsy", gopher.tags.add("yaml"))
    vim.keymap.set("n", "<leader>ge", "<cmd>GoIfErr")
  end,
}

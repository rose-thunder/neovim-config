return {
  "gbprod/nord.nvim",
  lazy = false,
  priotity = 1000,
  config = function()
    local config = require("nord")
    config.setup({
      terminal_colors = true,
    })
    vim.cmd("colorscheme nord")
  end,
}

return {
  "everviolet/nvim",
  name = "evergarden",
  lazy = false,
  priotity = 1000,
  config = function()
    local config = require("evergarden")
    config.setup({
      theme = {
        variant = "spring",
      },
      editor = {
        override_terminal = true,
      },
    })
    vim.cmd("colorscheme evergarden")
  end,
}

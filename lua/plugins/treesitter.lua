return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "HiPhish/rainbow-delimiters.nvim",
    },
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}

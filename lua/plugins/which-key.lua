return {
  "folke/which-key.nvim",
  dependencies = {
    { "echasnovski/mini.icons", version = false },
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup({})
  end,
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = true })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

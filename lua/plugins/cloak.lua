return {
  "laytan/cloak.nvim",
  config = function()
    local config = require("cloak")
    config.setup({
      enabled = true,
      try_all_patterns = true,
      cloak_on_leave = true,
      patterns = {
        {
          file_pattern = ".env*",
          cloak_pattern = "=.+",
          replace = nil,
        },
      },
    })
  end,
  vim.keymap.set("n", "<leader>h", ":CloakToggle<CR>"),
}

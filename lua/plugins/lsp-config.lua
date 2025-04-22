return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "cssls",
          "pylsp",
          "rust_analyzer",
          "gopls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        diagnostics = true,
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        diagnostics = true,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
        diagnostics = true,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
        diagnostics = true,
      })
      lspconfig.pylsp.setup({
        capabilities = capabilities,
        diagnostics = true,
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        diagnostics = true,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
        diagnostics = true,
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
            },
          },
        },
      })
      vim.diagnostic.config({ virtual_text = true })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

<<<<<<< HEAD
-- LSP config
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
    end
  end,
})

vim.diagnostic.config({ virtual_text = true })

vim.lsp.config("*", {
 	capabilities = {
 		textDocument = {
 			semanticTokens = {
 				multilineTokenSupport = true,
 			},
 		},
 	},
 	root_markers = { ".git" },
 })


-- required files, plugins, and LSPs 
require("vim-options")
require("lazy").setup("plugins")

vim.lsp.enable("lua_ls")
vim.lsp.enable("ts_ls")
=======
require("vim-options")
require("lazy").setup("plugins")
>>>>>>> parent of 9b53c40 (started adding native lsp config)

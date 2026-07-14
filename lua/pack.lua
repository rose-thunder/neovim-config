require("hooks")

-- Plugins
vim.pack.add({
    -- Dependencies
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },

    -- Plugins
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/laytan/cloak.nvim" },
    { src = "https://github.com/folke/which-key.nvim" },

    -- telescope
    {
        src = "https://github.com/nvim-telescope/telescope.nvim",
        branch = "master",
    },
    { src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
    { src = "https://github.com/natecraddock/telescope-zf-native.nvim" },

    -- treesitter
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        version = "master",
    },
    { src = "https://github.com/HiPhish/rainbow-delimiters.nvim" },
    { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },

    -- LSP and completion stack
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/L3MON4D3/LuaSnip" },
    { src = "https://github.com/nvimtools/none-ls.nvim" },
    { src = "https://github.com/nvimtools/none-ls-extras.nvim" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },

    -- filetree
    {
        src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
        version = vim.version.range("3"),
    },

    -- debugging
    { src = "https://github.com/folke/todo-comments.nvim" },

    -- colorscheme
    { src = "https://github.com/neanias/everforest-nvim" },
})

-- Custom commands
-- NOTE: pack add
vim.api.nvim_create_user_command("PackAdd", function(opts)
    vim.pack.add(opts.fargs)
end, { nargs = "+", desc = "Add plugins (PackAdd user/repo)" })

-- NOTE: pack update
vim.api.nvim_create_user_command("PackUpdate", function(opts)
    if opts.args ~= "" then
        -- update specific plugins
        local plugins = vim.split(opts.args, "%s+", { trimempty = true })
        vim.pack.update(plugins)
    else
        -- update all
        vim.pack.update()
    end
end, { desc = "Update all plugins or specific ones", nargs = "*" })

-- NOTE: pack del
vim.api.nvim_create_user_command("PackDel", function(opts)
    vim.pack.del(opts.fargs)
end, { nargs = "+", desc = "Delete plugins (space seperated)" })

-- Plugin Configs
require("plugins.lualine")
require("plugins.gitsigns")
require("plugins.cloak")
require("plugins.render-markdown")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.lsp-config")
require("plugins.none-ls")
require("plugins.neo-tree")
require("plugins.todo")

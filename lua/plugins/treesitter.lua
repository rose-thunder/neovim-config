local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {
        "markdown",
        "c_sharp",
        "gdscript",
        "lua",
        "cpp",
        "c",
        "godot_resource",
        "gdshader",
        "vim",
        "vimdoc",
        "query",
    },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
})

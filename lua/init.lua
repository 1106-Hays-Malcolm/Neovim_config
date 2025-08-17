-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})

require("mason").setup()
require("mason-lspconfig").setup()
require("code-completion")
-- require("file-explorer")

require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "javascript" },
    auto_install = false,
    highlight = { enable = true, additional_vim_regex_highlighting = false },
    incremental_selection = {
	    enable = true,
	    keymaps = {
		    init_selection = "<C-n>",
		    node_incremental = "<C-n>",
		    scope_incremental = "<C-s>",
		    node_decremental = "<C-m>",
	    }
    }
})

vim.diagnostic.config({ update_in_insert = true })

require('leap').set_default_mappings()

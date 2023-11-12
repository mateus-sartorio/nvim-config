require("mateus.options")
require("mateus.keymaps")
require("mateus.plugins")
require("mateus.colorscheme")
require("mateus.cmp")
require("mateus.lsp")
require("mateus.telescope")
require("mateus.treesitter")
require("mateus.autopairs")
require("mateus.comment")
require("mateus.gitsigns")
require("mateus.bufferline")
require("mateus.toggleterm")
require("mateus.indent-blankline")
require("mateus.lint")
require("mateus.formatter")
require("mateus.statusbar")

local status_ok, nvim_tree = pcall(require, "mateus.nvim-tree")
if not status_ok then
	return
end

nvim_tree.setup({})

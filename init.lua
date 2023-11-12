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
require("mateus.nvim-tree")
require("mateus.bufferline")
require("mateus.toggleterm")
require("mateus.indent-blankline")
require("mateus.lint")
require("mateus.formatter")
-- require("mateus.statusline")

-- Added in here to correct a bug where nvim-tree does not load
require("nvim-tree").setup({
	disable_netrw = true,
	hijack_netrw = true,
	open_on_tab = false,
	hijack_cursor = false,
	update_cwd = true,
	hijack_directories = {
		enable = true,
		auto_open = true,
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	view = {
		width = 30,
		side = "left",
		number = false,
		relativenumber = false,
	},
	renderer = {
		highlight_git = true,
		root_folder_modifier = ":t",
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				git = {
					unstaged = "",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					deleted = "",
					untracked = "U",
					ignored = "◌",
				},
				folder = {
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
				},
			},
		},
	},
})

require("mateus.options")
require("mateus.keymaps")
require("mateus.plugins")
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
require("mateus.sttusline")
require("mateus.dashboard")
require("mateus.which-key")

-- Those two must be required in that order
require("mateus.nightfox")
require("mateus.colorscheme")

require("mateus.mason-null-ls")

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

-- This code solves the issue where nvim does not quit if NvimTree is the last buffer open
local count = 0
vim.o.confirm = true
vim.api.nvim_create_autocmd("BufEnter", {
	group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
	callback = function()
		local layout = vim.api.nvim_call_function("winlayout", {})
		if
			layout[1] == "leaf"
			and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree"
			and layout[3] == nil
		then
			if count > 0 then
				vim.cmd("quit")
			end
			count = count + 1
		end
	end,
})

local status_ok, sttusline = pcall(require, "sttusline")
if not status_ok then
	return
end

sttusline.setup({
	-- statusline_color = "#000000",
	statusline_color = "StatusLine",

	-- | 1 | 2 | 3
	-- recommended: 3
	laststatus = 3,
	disabled = {
		filetypes = {
			-- "NvimTree",
			-- "lazy",
		},
		buftypes = {
			-- "terminal",
		},
	},
	components = {
		"mode",
		"filename",
		"git-branch",
		"git-diff",
		"%=",
		"diagnostics",
		"lsps-formatters",
		"copilot",
		"indent",
		"encoding",
		"pos-cursor",
		"pos-cursor-progress",
	},
})

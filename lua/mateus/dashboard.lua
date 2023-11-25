local status_ok, dashboard = pcall(require, "dashboard")

if not status_ok then
	return
end

dashboard.setup({
	theme = "hyper", --  theme is doom and hyper default is hyper
	disable_move = false, --  default is false disable move keymap for hyper
	shortcut_type = "letter", --  shorcut type 'letter' or 'number'
	change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs
	config = {}, --  config used for theme
	hide = {
		statusline = true, -- hide statusline default is true
		tabline = true, -- hide the tabline
		winbar = true, -- hide winbar
	},
})

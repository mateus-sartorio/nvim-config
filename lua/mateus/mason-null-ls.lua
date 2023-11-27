local status_ok, mason_null_ls = pcall(require, "mason-null-ls")

if not status_ok then
	vim.notify("mason-null-ls did not initialize correctly")
	return
end

mason_null_ls.setup({
	ensure_installed = { "stylua", "prettierd", "clang-format" },
})

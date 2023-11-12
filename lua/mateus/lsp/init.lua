local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("mateus.lsp.mason")
require("mateus.lsp.handlers").setup()
require("mateus.lsp.null-ls")

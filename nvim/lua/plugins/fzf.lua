return {
	"ibhagwan/fzf-lua",
	cmd = "FzfLua",
	keys = {
		{ "<leader>ss", "<cmd> FzfLua lsp_document_symbols<cr>", desc = "find symbols" },
		{ "<leader><leader>", "<cmd> FzfLua files<cr>", desc = "find files" },
		{ "<leader>sg", "<cmd> FzfLua live_grep<cr>", desc = "grep" },
		{ "<leader>`", "<cmd> FzfLua buffers<cr>", desc = "find buffers" },
		{ "gr", "<cmd> FzfLua lsp_references<cr>", desc = "references" },
		{ "<leader>ca", "<cmd> FzfLua lsp_code_actions<cr>", desc = "code actions" },
		{ "gd", "<cmd> FzfLua lsp_definitions<cr>", desc = "code actions" },
	},
	opts = {},
}

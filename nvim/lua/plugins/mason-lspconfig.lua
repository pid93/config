return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls", "rust_analyzer", "angularls", "vtsls", "stylua" },
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
	},

	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()

		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "vtsls", "eslint", "rust_analyzer" },
			handlers = {
				-- The first entry is the default handler for all installed servers
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end,
				-- 2. ESLint specific handler
				["eslint"] = function()
					lspconfig.eslint.setup({
						capabilities = capabilities,
						on_attach = function(client, bufnr)
							-- Creates an auto-command to fix all fixable errors on save
							vim.api.nvim_create_autocmd("BufWritePre", {
								buffer = bufnr,
								command = "EslintFixAll",
							})
						end,
						settings = {
							workingDirectories = { mode = "auto" },
						},
					})
				end,

				["vtsls"] = function()
					lspconfig.vtsls.setup({
						capabilities = capabilities,
						settings = {
							typescript = {
								updateImportsOnFileMove = { enabled = "always" },
								suggest = {
									completeFunctionCalls = true,
								},
							},
							vtsls = {
								autoUseWorkspaceTsdk = true,
								experimental = {
									completion = {
										enableServerSideFuzzyMatch = true,
									},
								},
							},
						},
					})
				end,
			},
		})
	end,
}

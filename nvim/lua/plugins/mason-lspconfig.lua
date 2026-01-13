return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls", "rust_analyzer", "angularls", "vtsls", "stylua", "prettier", "prettierd" },
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
		"hrsh7th/cmp-nvim-lsp",
	},

	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		-- 1. Create capabilities to broadcast to the LSP
		local capabilities = cmp_nvim_lsp.default_capabilities()

		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "vtsls" }, -- Mason name
			handlers = {
				-- The first entry is the default handler for all installed servers
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end,

				-- Target vtsls specifically for custom settings
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

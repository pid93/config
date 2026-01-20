-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "
vim.keymap.set("n", "gn", vim.diagnostic.goto_next)
vim.keymap.set("n", "gp", vim.diagnostic.goto_prev)

vim.keymap.set("n", "<S-j>", "")
vim.keymap.set("n", "<S-j>", "")

vim.keymap.set("n", "<C-k>", "5k")
vim.keymap.set("n", "<C-j>", "5j")
vim.keymap.set("n", "<C-h>", "5b")
vim.keymap.set("n", "<C-l>", "5w")

vim.keymap.set("v", "<C-k>", "5k")
vim.keymap.set("v", "<C-j>", "5j")
vim.keymap.set("v", "<C-h>", "5h")
vim.keymap.set("v", "<C-l>", "5l")

vim.keymap.set("n", "ķ", "<C-w>h")
vim.keymap.set("n", "∆", "<C-w>j")
vim.keymap.set("n", "Ż", "<C-w>k")
vim.keymap.set("n", "ł", "<C-w>l")

vim.keymap.set("n", "tj", "<cmd>tabnext<CR>")
vim.keymap.set("n", "tk", "<cmd>tabprev<CR>")
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<CR>")

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>gs", "<CMD>G<CR>")
vim.keymap.set("n", "<leader>gq", "<CMD>G<CR><CMD>q<CR>")
vim.keymap.set("n", "<leader>gw", "<CMD>Gwrite<CR>")
vim.keymap.set("n", "<leader>gr", "<CMD>Gread<CR>")
vim.keymap.set("n", "<leader>gh", "<CMD>diffget //2<CR>")
vim.keymap.set("n", "<leader>gl", "<CMD>diffget //3<CR>")
vim.keymap.set("n", "<leader>gp", "<CMD>Git push<CR>")

vim.keymap.set("v", "<leader>cf", vim.lsp.buf.format, { remap = false })
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { remap = false })

vim.keymap.set("c", "<C-h>", "<left>")
vim.keymap.set("c", "<C-j>", "<down>")
vim.keymap.set("c", "<C-k>", "<up>")
vim.keymap.set("c", "<C-l>", "<right>")

vim.keymap.set("n", "<A-C-k>", "<cmd>cp<CR>")
vim.keymap.set("n", "<A-C-j>", "<cmd>cn<CR>")

--vnoremap <C-c> y:!echo <C-r>=escape(substitute(shellescape(getreg('"')), '\n', '\r', 'g'), '#%!')<CR> <Bar> clip.exe<CR><CR>
vim.keymap.set(
	"v",
	"C-c",
	"y:!echo <C-r>=escape(substitute(shellescape(getreg('\"')), '\\n', '\\r', 'g'), '#%!')<CR> <Bar> clip.exe<CR><CR>"
)

vim.keymap.set("n", "<leader>p", "<cmd>:let @+=expand('%:p')<CR>")

vim.keymap.set("n", "<leader><space>", "<cmd>FzfLua files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<space><space>", "<cmd>FzfLua files<CR>", { desc = "Find files" })

vim.keymap.set("n", "<leader>`", "<cmd>FzfLua buffers<CR>", { desc = "Find buffers" })

--esc in insert & visual mode
-- vim.keymap.set("i", "kj", "<esc>", { noremap = true })
-- vim.keymap.set("v", "kj", "<esc>", { noremap = true })
-- vim.keymap.set("c", "kj", "<esc>", { noremap = true })

vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>cu", function()
	vim.lsp.buf.code_action({ context = { only = { "source.removeUnused.ts" } }, apply = true })
end)

-- vim.keymap.set("n", "<M-j>", ":m .+1<CR>==", { desc = "Move line down" })
-- vim.keymap.set("n", "<M-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

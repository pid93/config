-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd.hi("WinSeparator guifg=orange")
if vim.o.background == "light" then
  vim.api.nvim_set_hl(0, "NeotestPassed", { fg = "#228B22" })
  vim.api.nvim_set_hl(0, "NeotestFailed", { fg = "#B22222" })
  vim.api.nvim_set_hl(0, "NeotestRunning", { fg = "#8B8000" })
  vim.api.nvim_set_hl(0, "NeotestSkipped", { fg = "#8B8B8B" })
end

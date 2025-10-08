return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      keymaps = {
        ["<C-p>"] = false,
      },
      columns = {
        --"icon",
        --"permissions",
        --"size",
        --"mtime",
      },
      view_options = {
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
    })
    vim.keymap.set("n", "<C-e>", "<cmd>Oil<CR>")
  end,
}

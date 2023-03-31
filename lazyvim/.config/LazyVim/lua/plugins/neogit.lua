return {
  "TimUntersberger/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  -- lazy = true,
  keys = {
    { "<leader>ng", ":Neogit<CR>", desc = "Neogit" },
  },
  config = function()
    require("neogit").setup({
      integrations = {
        diffview = true,
      },
    })
  end,
}

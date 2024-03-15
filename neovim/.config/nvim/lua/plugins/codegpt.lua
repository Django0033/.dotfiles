return {
  "dpayne/CodeGPT.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  -- cmd = 'Chat',
  config = function()
    local ok, codegpt = pcall(require, 'codegpt.config')
    if not ok then
      return
    end
  end
}

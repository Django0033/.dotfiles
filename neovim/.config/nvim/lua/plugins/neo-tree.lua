return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { '<leader>nt', '<cmd>Neotree toggle<CR>', desc = 'Neotree Toggle' }
  },
  opts = {
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = true,
    },
    window = {
      mappings = {
        ["<space>"] = "none",
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
    },
  },
}

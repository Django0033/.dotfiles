return {
  -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>?',       ':Telescope oldfiles<CR>',    desc = '[?] Find recently opened files' },
    { '<leader><space>', ':Telescope buffers<CR>',     desc = '[ ] Find existing buffers' },
    { '<leader>sf',      ':Telescope find_files<CR>',  desc = '[S]earch [F]iles' },
    { '<leader>sh',      ':Telescope help_tags<CR>',   desc = '[S]earch [H]elp' },
    { '<leader>sw',      ':Telescope grep_string<CR>', desc = '[S]earch current [W]ord' },
    { '<leader>sg',      ':Telescope live_grep<CR>',   desc = '[S]earch by [G]rep' },
    { '<leader>sd',      ':Telescope diagnostics<CR>', desc = '[S]earch [D]iagnostics' },
    { '<leader>fb',      ':Telescope file_browser<CR>', desc = 'File browser' },
  },
  init = function()
    vim.keymap.set('n', '<leader>/', function()
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })
  end,
  config = function()
    -- [[ Configure Telescope ]]
    -- See `:help telescope` and `:help telescope.setup()`
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
            ['<C-k>'] = require 'telescope.actions'.move_selection_previous,
            ['<C-j>'] = require 'telescope.actions'.move_selection_next,
          },
        },
      },
    }

    -- Enable telescope fzf native, if installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension 'file_browser')
  end
}

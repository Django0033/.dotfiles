return {
  -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>?',       ':Telescope oldfiles<CR>',     desc = '[?] Find recently opened files' },
    { '<leader><space>', ':Telescope buffers<CR>',      desc = '[ ] Find existing buffers' },
    { '<leader>sf',      ':Telescope find_files<CR>',   desc = '[S]earch [F]iles' },
    { '<leader>sh',      ':Telescope help_tags<CR>',    desc = '[S]earch [H]elp' },
    { '<leader>sw',      ':Telescope grep_string<CR>',  desc = '[S]earch current [W]ord' },
    { '<leader>sg',      ':Telescope live_grep<CR>',    desc = '[S]earch by [G]rep' },
    { '<leader>sd',      ':Telescope diagnostics<CR>',  desc = '[S]earch [D]iagnostics' },
    { '<leader>ss',      ':Telescope spell_suggest',    desc = '[S]pell [S]uggest' },
    { '<leader>sk',      ':Telescope keymaps<CR>',      desc = '[S]earch [K]eymaps' },
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
            ['<C-h>'] = require 'telescope'.extensions.hop.hop,
          },
        },
      },
      extensions = {
        hop = {
          -- the shown `keys` are the defaults, no need to set `keys` if defaults work for you ;)
          keys = { "a", "s", "d", "f", "g", "h", "j", "k", "l", ";",
            "q", "w", "e", "r", "t", "y", "u", "i", "o", "p",
            "A", "S", "D", "F", "G", "H", "J", "K", "L", ":",
            "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", },
          -- Highlight groups to link to signs and lines; the below configuration refers to demo
          -- sign_hl typically only defines foreground to possibly be combined with line_hl
          sign_hl = { "WarningMsg", "Title" },
          -- optional, typically a table of two highlight groups that are alternated between
          line_hl = { "CursorLine", "Normal" },
          -- options specific to `hop_loop`
          -- true temporarily disables Telescope selection highlighting
          clear_selection_hl = false,
          -- highlight hopped to entry with telescope selection highlight
          -- note: mutually exclusive with `clear_selection_hl`
          trace_entry = true,
          -- jump to entry where hoop loop was started from
          reset_selection = true,
        },
      },
    }

    -- Enable telescope fzf native, if installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension 'file_browser')
    pcall(require('telescope').load_extension 'hop')
  end
}

return {
  -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-fzf-native.nvim',
    'nvim-telescope/telescope-hop.nvim',
    'debugloop/telescope-undo.nvim',
  },
  lazy = true,
  init = function()
    local ok, which_key = pcall(require, 'which-key')
    if not ok then
      return
    end

    which_key.register({
      t = {
        name = 'Telescope',
        o = { '<cmd>lua require("telescope.builtin").oldfiles()<CR>', '[O]ldfiles' },
        b = { '<cmd>lua require("telescope.builtin").buffers()<CR>', '[B]uffers' },
        c = { '<cmd>lua require("telescope.builtin").colorscheme()<CR>', '[C]olorscheme' },
        f = { '<cmd>lua require("telescope.builtin").find_files()<CR>', '[F]ind File' },
        h = { '<cmd>lua require("telescope.builtin").help_tags()<CR>', '[H]elp Tags' },
        g = { '<cmd>lua require("telescope.builtin").grep_string()<CR>', '[G]rep String' },
        k = { '<cmd>lua require("telescope.builtin").keymaps()<CR>', '[K]eymaps' },
        l = { '<cmd>lua require("telescope.builtin").live_grep()<CR>', '[L]ive Grep' },
        d = { '<cmd>lua require("telescope.builtin").diagnostics()<CR>', '[D]iagnostics' },
        s = { '<cmd>lua require("telescope.builtin").spell_suggest()<CR>', '[S]pell Suggest' },
        F = { function()
          local ok, _ = pcall(require('telescope').load_extension, 'file_browser')
          if not ok then
            return
          end
          vim.cmd [[Telescope file_browser]]
        end, '[F]ile Browser' },
        u = { function()
          local ok, _ = pcall(require('telescope').load_extension, 'undo')
          if not ok then
            return
          end
          vim.cmd [[Telescope undo]]
        end, '[U]ndo Tree' },
      }
    }, { prefix = '<leader>' })

    vim.keymap.set('n', '<leader>/', function()
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })
  end,
  config = function()
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
    pcall(require('telescope').load_extension, 'hop')
  end
}

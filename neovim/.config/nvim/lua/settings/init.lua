-- [[ Setting options ]]
-- See `:help vim.o`

local set = vim.o

set.backup = false                        -- Create a backup file
set.breakindent = true                    -- Wrapped lines will continue indented
set.clipboard = 'unnamedplus'             -- Use the system clipboard
set.colorcolumn = '80'                    -- Mark the 80th column
set.completeopt = 'menuone,noselect'      -- Shows the pop up menu even there is only one option and selects nothing
set.conceallevel = 0                      -- `` is visible in markdown files
set.cursorline = true                     -- Highlight current line
set.expandtab = true                      -- Convert tabs to spaces
set.fileencoding = 'utf-8'                -- The encoding written to a file
set.foldenable = false                    -- All folds are open
set.hidden = true                         -- Buffer becomes hidden when abandoned
set.hlsearch = false                      -- Turn off search highlight
set.ignorecase = true                     -- Ignore case in search patterns
set.incsearch = true                      -- Highlight search pattern as it's type
set.mouse = 'a'                           -- Enable mouse support
set.number = true                         -- Set numbered lines
set.numberwidth = 2                       -- Set number column width to 2
set.pumheight = 10                        -- Pop up menu height
set.relativenumber = true                -- Set relative numbered lines
set.scrolloff = 9                         -- Minimal number of lines keept above or below the cursor
set.shiftwidth = 4                        -- The number of spaces inserted for each indentation
set.showmode = false                      -- Show mode in cmd line
set.sidescrolloff = 9                     -- Minimal number of collumns keept right or left the cursor
set.signcolumn = 'yes'                    -- Always show the sign column
set.smartcase = true                      -- Override ignorecase if the search pattern contains an uppercase
set.smartindent = true                    -- Smart indent
set.smarttab = true                       -- A <TAB> in front of a line inserts blanks acording to swiftwidth
set.splitbelow = true                     -- Force horizontal splits to open below current buffer
set.splitright = true                     -- Force vertical splits to open to the right of the current buffer
set.swapfile = false                      -- Create swap file
set.tabstop = 4                           -- Insert 4 paces for a tab
set.termguicolors = true                  -- Enable 24-bits rgb in the TUI
set.timeout = true                        -- Set on the wait between keymaps
set.timeoutlen = 300                      -- Set the time of the wait between keymaps
set.undodir = '/home/django/.vim/undodir' -- Set the path to the undodir
set.undofile = true                       -- Creates an undofile
set.updatetime = 250
set.number = true                         -- Print a number in front of each line
set.signcolumn = 'yes'                    -- Always show the sign column
set.wrap = true                           -- Display lines as one long line
set.writebackup = false                   -- If a file is being edited by another program, it is not allowed to be edited

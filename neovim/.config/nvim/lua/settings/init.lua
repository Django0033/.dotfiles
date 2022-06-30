local set = vim.opt

set.backup = false                              -- Create a backup file
set.clipboard = set.clipboard + 'unnamedplus'   -- Allow neovim to access the system clipboard
set.colorcolumn = '80'                          -- Mark the 80th column
set.conceallevel = 0                            -- `` is visible in markdown files
set.cursorline = true                           -- Highlight current line
set.expandtab = true                            -- Convert tabs to spaces
set.fileencoding = 'utf-8'                      -- The encoding written to a file
set.hidden = true
set.hlsearch = false                            -- Highlight previous search pattern
set.ignorecase = true                           -- Ignore case in search patterns
set.incsearch = true
set.mouse = 'a'                                 -- Allow the mouse to be used in neovim
set.number = true                               -- Set numbered lines
set.numberwidth = 2                             -- Set number column width to 2
set.pumheight = 10                              -- Pop up menu height
set.relativenumber = true                       -- Set relative numbered lines
set.scrolloff = 9
set.shiftwidth = 4                              -- The number of spaces inserted for each indentation
set.showmode = false                            -- Show mode in cmd line
-- set.showtabline = 2                             -- Show the tab line
set.sidescrolloff = 9
set.signcolumn = 'yes'                          -- Always show the sign column
set.smartcase = true
set.smartindent = true                          -- Smart indent
set.smarttab = true
set.splitbelow = true                           -- Force horizontal splits to open below current buffer
set.splitright = true                           -- Force vertical splits to open to the right of the current buffer
set.swapfile = false                            -- Create swap file
set.tabstop = 4                                 -- Insert 4 paces for a tab
set.termguicolors = true                        -- Set term gui colors
set.timeoutlen = 1000                           -- Time to wait for a mapped sequence to complete
set.undodir = '/home/django/.vim/undodir'
set.undofile = true                             -- Enable persistent undo
set.updatetime = 300                            -- Faster completion
set.wrap = false                                -- Display lines as one long line
set.writebackup = false                         -- If a file is being edited by another program, it is not allowed to be edited

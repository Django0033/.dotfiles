" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <C-space> <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fr <cmd>Telescope repo list<cr>
nnoremap <leader>fk <cmd>Telescope keymaps<cr>
nnoremap <leader>fy <cmd>Telescope neoclip<cr>
nnoremap <leader>fz <cmd>Telescope vimwiki i=1<cr>

lua require'telescope'.load_extension'repo'
lua require'telescope'.load_extension'vimwiki'
lua require'telescope'.load_extension'neoclip'
lua require'neoclip'.setup()

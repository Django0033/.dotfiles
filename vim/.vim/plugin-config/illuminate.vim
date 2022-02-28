" Keymaps
lua vim.api.nvim_set_keymap('n', '<a-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', {noremap=true})
lua vim.api.nvim_set_keymap('n', '<a-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', {noremap=true})

" Configs
lua << EOF
require'lspconfig'.pyright.setup {
on_attach = function(client)
  -- [[ other on_attach code ]]
  require 'illuminate'.on_attach(client)
end,
}
EOF

let g:Illuminate_highlightUnderCursor = 0

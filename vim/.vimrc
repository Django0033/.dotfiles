
syntax enable

set number
set mouse=a
set numberwidth=1
set clipboard+=unnamedplus
set showcmd
set ruler
set encoding=utf-8
set showmatch
set tabstop=4 softtabstop=4
set sw=4
set expandtab
set smartindent
set relativenumber
set laststatus=2
set nohlsearch
set hidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=9
set colorcolumn=80
set signcolumn=auto
set splitbelow
set splitright
set cursorline
set path+=**
set wildmenu
set guifont=MesloLGSDZ_NF:12
set shortmess+=c
set wildmode=longest

let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')

    " Themes
    Plug 'morhetz/gruvbox'
    Plug 'dylanaraps/wal.vim'

    Plug 'easymotion/vim-easymotion'
    Plug 'preservim/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'itchyny/lightline.vim'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mattn/emmet-vim'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'yggdroot/indentline'
    Plug 'ap/vim-css-color'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'plasticboy/vim-markdown'

call plug#end()

" colorscheme wal
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

let mapleader=" "
inoremap ii <ESC><ESC>
vnoremap ii <ESC><ESC>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>rv :so $MYVIMRC<CR>
nnoremap ; :
nnoremap Y y$
nnoremap o o<ESC>

" Markers Autocomplete
inoremap <Leader><Leader> <Esc>/<++><CR>"_c4l
inoremap a( ()<++><Esc>F)i
inoremap a{ {}<++><Esc>F}i
inoremap a{<CR> {<CR><CR>}<CR><++><Esc>2ki
inoremap a[ []<++><Esc>F]i
inoremap a< <><++><Esc>F>i
inoremap a' ''<++><Esc>F'i
inoremap a" ""<++><Esc>F"i
inoremap a` ``<++><Esc>F`i

" Copy and paste from and to out of vim
vnoremap <C-c> "+y
map <C-v> "+P

" Change word under the cursor and the next match with `.`
nnoremap c* *``cgn
nnoremap c# #``cgN

" Writer mode
" z= to correct words
" ]s to go to the next wrong word
" gq<object>
function! Writer ()
    setlocal spell spelllang=en_us
    setlocal formatoptions=t1
    setlocal textwidth=80
endfunction

com! WR call Writer()

" Change tab
nnoremap <Leader>t :tabe<CR>
nnoremap <Leader><TAB> :tabnext<CR>

" Resize vertical split
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Make splits
nnoremap <Leader>vs :<C-u>vsplit<CR>
nnoremap <Leader>s :<C-u>split<CR>

" Keep your cursor centered while jumping through search results or joining
" lines.
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Set break points to undo
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap ) )<c-g>u
inoremap ] ]<c-g>u
inoremap } }<c-g>u
inoremap > ><c-g>u
inoremap ' '<c-g>u

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-k> <ESC>:m .-2<CR>==a
inoremap <C-j> <ESC>:m .+1<CR>==a
" nnoremap <C-k> :m .-2<CR>==
" nnoremap <C-j> :m .+1<CR>==

" Keep the text selected while indenting
vnoremap < <gv
vnoremap > >gv

" Easymotion config
nmap <Leader>e <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>k <Plug>(easymotion-k)
map <Leader>j <Plug>(easymotion-j)

"NerdTree config
nnoremap <Leader>nt :NERDTree<CR>
autocmd BufWinEnter * silent NERDTreeMirror
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

"UndoTree config
nnoremap <Leader>u :UndotreeShow<CR>

"Emmet config
let g:user_emmet_leader_key='<c-e>'

" IndentLine config
let g:indentLine_setColor = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" COC Config
autocmd FileType scss setl iskeyword+=@-@

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


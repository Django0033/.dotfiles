syntax enable

set number
set mouse=a
set numberwidth=1
set clipboard+=unnamedplus
set showcmd
set ruler
set encoding=UTF-8
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
set shortmess+=c
set guifont=FuraCode\ Nerd\ Font\ 11
" set wildmode=longest

let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')

    " Themes
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim',{'as':'dracula'}
    Plug 'dylanaraps/wal.vim'

    Plug 'easymotion/vim-easymotion'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
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
    Plug 'vifm/vifm.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'github/copilot.vim'
    Plug 'tpope/vim-repeat'
    Plug 'honza/vim-snippets'
    Plug 'vimwiki/vimwiki'
    Plug 'michal-h21/vim-zettel'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'liuchengxu/vim-which-key'
    Plug 'chun-yang/auto-pairs'

call plug#end()

" colorscheme wal
" colorscheme gruvbox
colorscheme dracula
" let g:gruvbox_contrast_dark = "hard"

let mapleader=" "
inoremap ii <ESC><ESC>:w<CR>
vnoremap ii <ESC><ESC>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>rv :so $MYVIMRC<CR>
nnoremap ; :
nnoremap Y y$
nnoremap o o<ESC>
nnoremap O O<ESC>

" Markers Autocomplete
" In insert mode type a and the opening of the pair you wanna use, it will
" create the closing pair and <++> outside the pair. When you finish typing,
" just hit the leader key twice to jump to the mark outside the pair and
" delete the mark.
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
" vnoremap <C-c> "+y
" map <C-v> "+P

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

" Buffer navigation
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bd :bdel<CR>

" Resize vertical split
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Make splits
" nnoremap <Leader>vs :<C-u>vsplit<CR>
" nnoremap <Leader>s :<C-u>split<CR>

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
inoremap : :<c-g>u

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

" Plugins Config files
source ~/.vim/plugin-config/easymotion.vim
source ~/.vim/plugin-config/undotree.vim
source ~/.vim/plugin-config/emmet.vim
source ~/.vim/plugin-config/indentline.vim
source ~/.vim/plugin-config/coc.vim
source ~/.vim/plugin-config/netrw.vim
source ~/.vim/plugin-config/vifm.vim
source ~/.vim/plugin-config/airline.vim
source ~/.vim/plugin-config/fugitive.vim
source ~/.vim/plugin-config/gitgutter.vim
source ~/.vim/plugin-config/vim-markdown.vim

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'path_html': '~/Documents/vimwiki_html/'},
            \ {'path': '~/Documents/markdown/', 'ext': '.md', 'syntax': 'markdown'}]

let g:vimwiki_markdown_link_ext = 0

" Vim-Zettel
" let g:zettel_format = "%title-%d%m%y"
let g:zettel_format = "%title"

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

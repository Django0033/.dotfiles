
"  _    ________  _______  ______
" | |  / /  _/  |/  / __ \/ ____/
" | | / // // /|_/ / /_/ / /
" | |/ // // /  / / _, _/ /___
" |___/___/_/  /_/_/ |_|\____/

"""""""""""""
" Set Block "
" """""""""""
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
set wildmode=longest
set foldlevel=1

let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim',{'as':'dracula'}
    Plug 'neovim/nvim-lspconfig'
    Plug 'scrooloose/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'easymotion/vim-easymotion'
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-fugitive'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mattn/emmet-vim'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'yggdroot/indentline'
    Plug 'ap/vim-css-color'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'plasticboy/vim-markdown'
    Plug 'vifm/vifm.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/gv.vim'
    Plug 'github/copilot.vim'
    Plug 'honza/vim-snippets'
    Plug 'vimwiki/vimwiki'
    Plug 'michal-h21/vim-zettel'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'liuchengxu/vim-which-key'
    Plug 'vim-test/vim-test'
    Plug 'ambv/black'
    Plug 'w0rp/ale'
    Plug 'puremourning/vimspector'
    Plug 'mhinz/vim-startify'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'cljoly/telescope-repo.nvim'
    Plug 'airblade/vim-rooter'
    Plug 'ElPiloto/telescope-vimwiki.nvim'
    Plug 'AckslD/nvim-neoclip.lua'
    Plug 'RRethy/vim-illuminate'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'jupyter-vim/jupyter-vim'
    Plug 'untitled-ai/jupyter_ascending.vim'
call plug#end()

" colorscheme gruvbox
colorscheme dracula
" let g:gruvbox_contrast_dark = "hard"

let mapleader=" "
" inoremap ii <ESC><ESC>:w<CR>
inoremap ii <ESC><ESC>:w<CR>
vnoremap ii <ESC><ESC>
nnoremap <Leader>w :w<CR>
" nnoremap <Leader>q :q<CR>
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
" inoremap <Leader><Leader> <Esc>/<++><CR>"_c4l
" inoremap a( ()<++><Esc>F)i
" inoremap a{ {}<++><Esc>F}i
" inoremap a{<CR> {<CR><CR>}<CR><++><Esc>2ki
" inoremap a[ []<++><Esc>F]i
" inoremap a< <><++><Esc>F>i
" inoremap a' ''<++><Esc>F'i
" inoremap a" ""<++><Esc>F"i
" inoremap a` ``<++><Esc>F`i

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
nnoremap <S-l> :bn<CR>
nnoremap <S-h> :bp<CR>
nnoremap <Leader>q :bdel<CR>
nnoremap <Leader>bq :%bd\|e#\|bd#<CR>

" Resize vertical split
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Resize the current split to at least (90,25) but no more than (140,60)
" or 2/3 of the available space otherwise.
function Splitresize()
    let hmax = max([winwidth(0), float2nr(&columns*0.66), 90])
    let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
    exe "vertical resize" . (min([hmax, 140]))
    exe "resize" . (min([vmax, 60]))
endfunction

nnoremap <Leader><Leader>j <C-W><C-J>:call Splitresize()<CR>
nnoremap <Leader><Leader>k <C-W><C-K>:call Splitresize()<CR>
nnoremap <Leader><Leader>l <C-W><C-L>:call Splitresize()<CR>
nnoremap <Leader><Leader>h <C-W><C-H>:call Splitresize()<CR>

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

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

""""""""""""""""""""""""
" Plugins Config files "
""""""""""""""""""""""""
source ~/.vim/plugin-config/nerdtree.vim
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
source ~/.vim/plugin-config/vim-test.vim
source ~/.vim/plugin-config/ale.vim
source ~/.vim/plugin-config/vimspector.vim
source ~/.vim/plugin-config/startify.vim
source ~/.vim/plugin-config/prettier.vim
source ~/.vim/plugin-config/telescope.vim
source ~/.vim/plugin-config/vim-rooter.vim
source ~/.vim/plugin-config/lspconfigfile.vim
source ~/.vim/plugin-config/illuminate.vim
source ~/.vim/plugin-config/vim-visual-multi.vim

let g:vimwiki_list = [{'path': '~/Documents/markdown/', 'ext': '.md', 'syntax': 'markdown'},
            \ {'path': '~/Documents/vimwiki/', 'path_html': '~/Documents/vimwiki_html/'}]

let g:vimwiki_markdown_link_ext = 1

" Vim-Zettel
let g:zettel_format = "%title"
nnoremap <Leader>zn :ZettelNew<Space>
nnoremap <Leader>zb :ZettelBackLinks<CR>

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

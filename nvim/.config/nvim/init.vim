""" Basic settings
" New for 2023! Updated things

set scrolloff=8             " zzzzzzz
set number relativenumber   " Show line numbers
set expandtab               " Tabs are spaces
set tabstop=2 softtabstop=2 " Tab is 2 spaces
set shiftwidth=2            " Indentation amount for < and > commands
set smartindent

set hlsearch                " Highlight search results
set ignorecase              " Searching is case insensitive
set smartcase               " Unless search contains capitals
set showmatch               " Highlight with matching brackets

set clipboard=unnamed       " yank & paste into system clipboard

" theme
colorscheme slate

" trash area/old/disabled for now
" syntax enable               " bruh
" set formatoptions+=o        " Continue comment on new lines
" set nojoinspaces            " Prevents inserting two spaces after punctuation on a join (J)
" set splitbelow              " Split horizontal below
" set splitright              " Split vertical to the right

""" Plugin stuff

" Using vim-plug as plugin manager
call plug#begin('~/.local/share/nvim/plugged')

" Use Nerdtree for an alternative explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" I wanna see some Git things
Plug 'airblade/vim-gitgutter'

" Ctrlp
" Plug 'ctrlpvim/ctrlp.vim'

" Let's put fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 

" Cool statusbar yeah
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()

""" remaps

" space is leader
let mapleader = " "

" open file browser with pv
nnoremap <leader>pv :Vex<CR>

" reload init.vim
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" fzf in ctrlp
nnoremap <C-p> :GFiles<CR>

" Open NERDTree with C-n
map <C-n> :NERDTreeToggle<CR>

" CtrlP
" let g:ctrlp_map = '<c-p>'
" let g:ctrl_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'ra'
" 
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" 
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

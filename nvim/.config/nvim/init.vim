" Basic settings

syntax enable               " bruh

set showmatch               " Show matching brackets
set number relativenumber   " Show line numbers
set formatoptions+=o        " Continue comment on new lines
set expandtab               " Tabs are spaces
set tabstop=4               " Tab is 4 spaces
set shiftwidth=4            " Indentation amount for < and > commands

set nojoinspaces            " Prevents inserting two spaces after punctuation on a join (J)

set splitbelow              " Split horizontal below
set splitright              " Split vertical to the right

set hlsearch                " Highlight search results
set ignorecase              " Searching is case insensitive
set smartcase               " Unless search contains capitals
set showmatch               " Highlight with matching brackets

set clipboard=unnamed       " yank & paste into system clipboard

" Plugin stuff
" Using vim-plug as plugin manager
call plug#begin('~/.local/share/nvim/plugged')

" Use Nerdtree for an explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" I wanna see some Git things
Plug 'airblade/vim-gitgutter'

" Ctrlp
Plug 'ctrlpvim/ctrlp.vim'

" Let's put fzf
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

" Mappings / Plugin stuff

" Open NERDTree with C-n
map <C-n> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrl_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

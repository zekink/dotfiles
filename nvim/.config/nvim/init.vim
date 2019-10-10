" Basic settings

set showmatch           " Show matching brackets
set number              " Show line numbers
set formatoptions+=o    " Continue comment on new lines
set expandtab           " Tabs are spaces
set tabstop=4           " Tab is 4 spaces
set shiftwidth=4        " Indentation amount for < and > commands

set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

set splitbelow          " Split horizontal below
set splitright          " Split vertical to the right

set ignorecase          " Searching is case insensitive
set smartcase           " Unless search contains capitals

" Plugin stuff
" Using vim-plug as plugin manager
call plug#begin('~/.local/share/nvim/plugged')

" Use Nerdtree for an explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

" Mappings

" Open NERDTree with C-n
map <C-n> :NERDTreeToggle<CR>

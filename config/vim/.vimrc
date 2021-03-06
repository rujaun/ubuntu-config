call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-scripts/indentpython'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'

call plug#end()

let loaded_netrwPlugin = 1

map <C-n> :NERDTreeToggle<CR>

let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
let g:airline_theme='one'

set termguicolors

colorscheme one
set background=dark

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set encoding=utf-8

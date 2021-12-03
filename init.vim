" General config
syntax enable
set mouse=a " Active mouse
set number
set numberwidth=2
set relativenumber
set encoding=utf-8
set showmatch " Show matching brackets
set sw=2 " Tabstop width
set laststatus=2 " Show status bar
set noshowmode " Hide mode
set title " Show title

" Plugins
call plug#begin()
source ~/.config/nvim/src/temas.vim " Theme plugins
" TailwindCss
Plug 'rodrigore/coc-tailwind-intellisense'
" Emmet plugin
Plug 'mattn/emmet-vim'
" Rainbow parentesis
Plug 'luochen1990/rainbow'
" Multiple cursor
Plug 'terryma/vim-multiple-cursors'
" Airline
Plug 'vim-airline/vim-airline'
" Start screen
 Plug 'mhinz/vim-startify'
" files sidebar
Plug 'scrooloose/nerdtree'
" text browser
Plug 'easymotion/vim-easymotion'
" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master'}
" Sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } 
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Ident color
Plug 'Yggdroot/indentLine'
" HTML plugins
Plug 'AndrewRadev/tagalong.vim'
" Statisctic
Plug 'wakatime/vim-wakatime' 
call plug#end()
" Theme config
set termguicolors
colorscheme tokyonight
"colorscheme elly
"colorscheme nord
"colorscheme one 
"set background=light

source ~/.config/nvim/src/atajos.vim " Shortcuts

" startify
let g:startify_custom_header = [
\' ____ _____                   _   __  __ ____  ',
\'/ ___|_   _|   __ _ _ __   __| | |  \/  | __ ) ',
\'\___ \ | |    / _` |  _ \ / _` | | |\/| |  _ \ ',
\' ___) || |   | (_| | | | | (_| | | |  | | |_) |',
\'|____/ |_|    \__,_|_| |_|\__,_| |_|  |_|____/ ',
\]

" Airline configuration
let g:airline#extensions#tabline#enabled = 1 " Enable tabline
let g:airline_powerline_fonts = 1

" Nerdtree configuration
let g:NERDTreeChDirMode = 2

" Identline configuration
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal','.vim'] 
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
let g:indentLine_char_list = ['.']
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let &viewdir=expand("~/") . ".config/nvim/folding"
if !isdirectory(expand(&viewdir))|call mkdir(expand(&viewdir), "p", 451)|endif

autocmd BufWrite * mkview
autocmd BufRead * silent! loadview

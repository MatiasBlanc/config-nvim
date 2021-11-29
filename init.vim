" Configuracion Normal
set signcolumn=yes
set number
set mouse=a
set numberwidth=2
syntax enable
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set title

call plug#begin()
" Temas
source src/temas.vim
" airline
Plug 'vim-airline/vim-airline'
" Pantalla de Inicio
 Plug 'mhinz/vim-startify'
" Explorador de archivos
Plug 'scrooloose/nerdtree'
" Buscador de archivos
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf.vim'
" Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master'}
" Sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } 
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Color en la identacion
Plug 'Yggdroot/indentLine'
" HTML plugins
Plug 'AndrewRadev/tagalong.vim'
call plug#end()

" Atajos de teclado
source /home/matiasblanc/.config/nvim/src/atajos.vim

" Airline configuration
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline_powerline_fonts = 1

" Nerdtree configuration
let g:NERDTreeChDirMode = 2

" Identline configuration
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal','.vim']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
let g:indentLine_char_list = ['.']
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Elegir el tema
set termguicolors
let g:airline_theme="elly"
colorscheme night-owl
"colorscheme elly
"colorscheme nord

let &viewdir=expand("~/") . ".config/nvim/folding"
if !isdirectory(expand(&viewdir))|call mkdir(expand(&viewdir), "p", 451)|endif

autocmd BufWrite * mkview
autocmd BufRead * silent! loadview

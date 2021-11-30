" Configuracion Normal
syntax enable " Se activa la sintaxis
set mouse=a " Se puede ocupar el mouse para navegar
set number
set numberwidth=2
set relativenumber
set encoding=utf-8
set showmatch " Se destacan los parentesis de cierre
set sw=2 " Configura la cantidad de espacios que salta al poner TAB
set laststatus=2
set noshowmode " No se ve el modo en la barra de comandos
set title

call plug#begin()
source ~/.config/nvim/src/temas.vim

Plug 'mattn/emmet-vim'
" Multiple cursor
Plug 'terryma/vim-multiple-cursors'
" Airline
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
" Estadisticas
Plug 'wakatime/vim-wakatime' 
call plug#end()

" Elegir el tema
set termguicolors
colorscheme tokyonight
"colorscheme elly
"colorscheme nord
"colorscheme one 
"set background=light

" Atajos de teclado
source ~/.config/nvim/src/atajos.vim
" startify
let g:startify_custom_header = [
\' ____ _____                   _   __  __ ____  ',
\'/ ___|_   _|   __ _ _ __   __| | |  \/  | __ ) ',
\'\___ \ | |    / _` |  _ \ / _` | | |\/| |  _ \ ',
\' ___) || |   | (_| | | | | (_| | | |  | | |_) |',
\'|____/ |_|    \__,_|_| |_|\__,_| |_|  |_|____/ ',
\]

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

let &viewdir=expand("~/") . ".config/nvim/folding"
if !isdirectory(expand(&viewdir))|call mkdir(expand(&viewdir), "p", 451)|endif

autocmd BufWrite * mkview
autocmd BufRead * silent! loadview

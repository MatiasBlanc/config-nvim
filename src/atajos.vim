let mapleader = " "
nmap <leader>s <Plug>(easymotion-s2)
nmap <C-q> :q!
nmap <leader>q :wq<cr>
nmap <leader>w :w<cr>
nmap <leader>so :so%<cr>
nmap <leader>f :FZF<cr>
nmap <leader>p :PlugInstall<cr>
nmap <leader>n :NERDTreeToggle<cr>

nmap <leader>bd :bdelete
nmap <leader>v :bprevious<CR>
nmap <leader>b :bnext<CR>
nmap <C-1> :b1<CR>

inoremap jk <Esc>
vnoremap jk <Esc>
inoremap kj <Esc>
vnoremap kj <Esc>
inoremap KJ <Esc>
vnoremap JK <Esc>
inoremap Jk <Esc>
vnoremap Kj <Esc>

let g:multi_cursor_use_default_mapping=0

" Multiple Cursor
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<C-m>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<C-m>'
let g:multi_cursor_prev_key            = '<C-m>'
let g:multi_cursor_skip_key            = '<C-m>'
let g:multi_cursor_quit_key            = '<Esc>'

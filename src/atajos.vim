let mapleader = " "
nmap <leader>s <Plug>(easymotion-s2)
nmap <C-q> :q!
nmap <leader>q :wq<cr>
nmap <leader>w :w<cr>
nmap <leader>so :so%<cr>
nmap <leader>f :FZF<cr>
nmap <leader>p :PlugInstall<cr>
nmap <leader>n :NERDTreeToggle<cr>

nmap <leader>bd :bdelete<cr>
nmap <leader>v :bprevious<cr>
nmap <leader>b :bnext<cr>
nmap <C-1> :b1<cr>

imap jk <Esc>
vmap jk <Esc>
imap kj <Esc>
vmap kj <Esc>
imap KJ <Esc>
vmap JK <Esc>
imap Jk <Esc>
vmap Kj <Esc>

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

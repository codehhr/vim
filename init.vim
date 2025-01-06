colorscheme slate
set number
noremap s <nop>
nnoremap S :w<CR>
nnoremap Q :q!<CR>
inoremap jj <ESC>
noremap <ESC> :nohlsearch<CR>

nnoremap J 5j
nnoremap K 5k
nnoremap H 5h
nnoremap L 5l

vnoremap J 5j
vnoremap K 5k

" split
nnoremap sd :vsplit<CR><C-w>l
nnoremap sa :vsplit<CR>
nnoremap sx :split<CR><C-w>j
nnoremap sw :split<CR>

" navigation
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sh <C-w>h
nnoremap sl <C-w>l

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

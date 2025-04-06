let mapleader=","

"
" Normal mode mappings
"

" edit vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
" source vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
" double-quote the current word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>E
" single-quote the current word
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>E
" go to the first non-white space character of the current line
nnoremap H ^
" go to the last non-white space character of the current line (i.e., not equivalent to '$')
nnoremap L g_
" switch to the alternate buffer (similarity with 'gt' and 'gT' commands)
nnoremap ga <C-^>
" fix spelling mistake with the first guess
nnoremap <leader>f 1z=
" :bprev
nnoremap [b :bprevious<CR>
" :bnext
nnoremap ]b :bnext<CR>
" :bfirst
nnoremap [B :bfirst<CR>
" :blast
nnoremap ]B :blast<CR>

" windows navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"
" Insert mode mappings
"

" capitalize the current word
inoremap <c-u> <esc>viwUi
" make stars (e.g. when debugging)
inoremap <leader>* *****


"
" Visual mode mappings
"

" go to the first non-white space character of the current line
vnoremap H ^
" go to the last non-white space character of the current line (i.e., not equivalent to '$')
vnoremap L g_


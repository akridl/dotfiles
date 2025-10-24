" General {{{
syntax on
set number
set cursorline
filetype plugin on
set mouse-=a        " disable mouse
set background=dark
" }}}

" Indentation {{{
set tabstop=4    " tab -> 4 spaces
set expandtab    " expand \t to spaces (4 spaces, since tabstop=4)
set shiftwidth=4 " indent (e.g. `>>` to 4 spaces)
set autoindent   " copy indent from current line when starting the new line (handy e.g. when using `o` command)
" }}}

" Searching {{{
set ignorecase
set incsearch
set nohlsearch
" }}}

" Autocommands {{{
" Autocommands/General {{{
augroup general
    autocmd!
    " save any file immediately once opened
    autocmd BufNewFile * :write
augroup END
" }}}

" Autocommands/Vim {{{
augroup filetype_vim
    autocmd!
    " turn on folding by default
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Autocommands/Markdown {{{
augroup filetype_md
    autocmd!
    " OPM: ih to select the heading title
    autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^#\\+\\s.*$\\r:nohlsearch\\rwvg_"<cr>
augroup END
" }}}
" }}}

" Mappings {{{
let mapleader=","

" Mappings/Normal-mode {{{
" vimrc-related
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Quoting a word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>E
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>E

" In-buffer navigation
nnoremap H ^
nnoremap L g_

" Buffers navigation
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>
nnoremap [B :bfirst<CR>
nnoremap ]B :blast<CR>
nnoremap ga <C-^>           " switch to the alternate buffer

" Windows navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}

" Mappings/Insert-mode {{{
" capitalize the current word
inoremap <c-u> <esc>viwUi
" }}}

" Mappings/Visual-mode {{{
" go to the first non-white space character of the current line
vnoremap H ^
" go to the last non-white space character of the current line (i.e., not equivalent to '$')
vnoremap L g_
" }}}

" }}}

" Abbreviations {{{
" Make stars (e.g. when debugging)
iabbrev <leader>* **********
" }}}

" Third-party plugins {{{
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
" }}}

" Statusline {{{
let g:airline#extensions#tabline#enabled = 1    " show also info regarding tabs and buffers
let g:airline_powerline_fonts=2                 " make airline heads to be arrows, not flat
let g:airline_theme='distinguished'             " for possible airline themes, see `:AirlineTheme <Tab>`
" }}}

" Miscallenous {{{
" order of these 3 lines is very important, see e.g.
" (https://vim.fandom.com/wiki/Highlight_unwanted_spaces)
au ColorScheme * highlight ExtraWhitespace ctermbg=darkred guibg=darkred
colorscheme wildcharm
" colorscheme default
match ExtraWhitespace /\s\+$/

" Open vim at last position it was last time opened
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal! g'\"" | endif
" }}}

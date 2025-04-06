"
" General
"
syntax on
set number
set cursorline
filetype plugin on
set mouse-=a        " disable mouse


"
" Indentation
"
set tabstop=4    " tab -> 4 spaces
set expandtab    " expand \t to spaces (4 spaces, since tabstop=4)
set shiftwidth=4 " indent (e.g. `>>` to 4 spaces)
set autoindent   " copy indent from current line when starting the new line (handy e.g. when using `o` command)


"
" Searching
"
set ignorecase
set incsearch
set nohlsearch


"
" Own plugins
"
" "~/.vim/plugin"
    " mappings.vim
        " definitions of mappings
    " statusline.vim
        " configuration of the statusline


"
" Third-party plugins
"
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


"
" Statusline
"
let g:airline#extensions#tabline#enabled = 1    " show also info regarding tabs and buffers
let g:airline_powerline_fonts=2                 " make airline heads to be arrows, not flat
let g:airline_theme='distinguished'             " for possible airline themes, see `:AirlineTheme <Tab>`


"
" Colorscheme
"
" order of these 3 lines is very important, see e.g.
" (https://vim.fandom.com/wiki/Highlight_unwanted_spaces)
au ColorScheme * highlight ExtraWhitespace ctermbg=darkred guibg=darkred
colorscheme wildcharm
" colorscheme default
match ExtraWhitespace /\s\+$/


" Open vim at last position it was last time opened
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal! g'\"" | endif


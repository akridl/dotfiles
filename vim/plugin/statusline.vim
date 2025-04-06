" set laststatus=2                " Always show statusline
set laststatus=0                " Do not show statusline

set statusline=\                " Add a space in the beginning
set statusline+=%f              " Path to the file
set statusline+=%m              " Modified flag
set statusline+=%=              " Move to the right side of the statusline
set statusline+=Filetype:\ %y   " File type
set statusline+=\               " Separator
set statusline+=%l/%L           " Line info
set statusline+=\               " Add a space in the end


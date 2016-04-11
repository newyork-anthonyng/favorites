" enable syntax processing
syntax enable

" number of spaces per tab
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

set number  " show line numbers
set cursorline  " highlight current line
set ruler  " display location in the file

" show invisible characters
set list
set list listchars=tab:>-,trail:•,precedes:<,extends:>

" remap up and down arrows to resize vertically-split windows
nnoremap <up> :vertical resize +5<cr>
nnoremap <down> :vertical resize -5<cr>

c> " remap 'noremacape key

" run ctrlP fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

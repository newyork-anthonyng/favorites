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
set list listchars=tab:>-,trail:•,precedes:<,extends:> " display whitespace

c> " remap 'noremacape key

" run ctrlP fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

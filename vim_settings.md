syntax enable	" enable syntax processing

" UI Config
set number	" show line numbers
set showcmd	" show command in bottom bar
set cursorline	" highlight current line
set wildmenu	" visual autocomplete for command menu

" Show invisible characters
set list
set list listchars=tab:>-,trail:•,precedes:<,extends:>

" Copy to system clipboard
set clipboard=unnamed

" remap escape to jj
inoremap jj <esc>

" remap up and down arrows to resize vertically split windows
nnoremap <up> :vertical resize -5<cr>
nnoremap <down> :vertical resize +5<cr>

set tabstop=2 " show tabs as 4 spaces
set shiftwidth=2 " used with the < and > keys to un/indent multiple lines

" set up CtrlP for fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

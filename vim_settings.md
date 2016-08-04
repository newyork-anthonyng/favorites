Vim Plugins (clone the plugins into the ~/.vim/bundle folder)
https://github.com/kien/ctrlp.vim
https://github.com/pangloss/vim-javascript
https://github.com/mxw/vim-jsx

syntax enable	" enable syntax processing

" UI Config
set number	" show line numbers
set showcmd	" show command in bottom bar
set cursorline	" highlight current line
set wildmenu	" visual autocomplete for command menu
set hlsearch	" highlight search text
set autoindent	" autoindent lines

" Show invisible characters
set list
set list listchars=tab:>-,trail:~,precedes:<,extends:>

" Copy to system clipboard
set clipboard=unnamed

" remap escape to jj
inoremap jj <esc>
" disable autoindent for the current file by pressing F8
nnoremap <F8> :setl noai nocin nosi inde=<CR>

" remap up and down arrows to resize vertically split windows
nnoremap <up> :vertical resize -5<cr>
nnoremap <down> :vertical resize +5<cr>

" remap tab key to go to next window when in split mode
nnoremap <Tab> <C-w>w

set tabstop=2 " show tabs as 4 spaces
set shiftwidth=2 " used with the < and > keys to un/indent multiple lines

" set up CtrlP for fuzzy search
" set up JS and JSX syntax highlighting
set runtimepath^=~/.vim/bundle/ctrlp.vim,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-jsx

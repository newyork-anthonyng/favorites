" begin: required for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'	" Vim plugin manager
Plugin 'ctrlpvim/ctrlp.vim'	" Fuzzy search
Plugin 'pangloss/vim-javascript' " Syntax highlighting for JavaScript
Plugin 'mxw/vim-jsx' " Syntax highlighting for JSX

call vundle#end()
filetype plugin indent on
" end: required for vundle
" To install all the plugins, type the below into your command line
" $ vim +PluginInstall +qall


" UI Config
syntax enable	" enable syntax processing
set number	" show line numbers
set showcmd	" show command in bottom bar
set cursorline	" highlight current line
set wildmenu	" visual autocomplete for command menu
set hlsearch	" highlight search text
set autoindent	" autoindent lines
set nocindent	" turn off C style indent
set nosmartindent	"turn off smart indent

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

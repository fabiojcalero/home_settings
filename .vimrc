" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Prevent vim from automatically adding comments when new line is created
au FileType * set fo-=c fo-=r fo-=0

" Set tab width to 4 columns.
au FileType * set tabstop=4

" Set shift width to 4 spaces.
set shiftwidth=4

" While searching through a file incrementally highlight matching characters as you type.
set incsearch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history. Default number is 20.
set history=1000

" Indent files according to their filetype.
filetype indent on

" Enable automatic indentation
set autoindent
set smartindent


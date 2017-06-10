set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required
Bundle 'VundleVim/Vundle.vim'

" plugins
Bundle 'cschlueter/vim-mustang'
Bundle 'godlygeek/csapprox'
Bundle 'vim-scripts/indentpython.vim'
Bundle 'vim-scripts/Pydiction'

call vundle#end()
filetype plugin indent on

syntax enable

set number
set ruler
set cursorline
set showmatch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set textwidth=80
set smarttab
set expandtab

set linebreak
set textwidth=500

set autoindent
set smartindent
set wrap

set history=1000

set encoding=utf8
try
    lang en_US
catch
endtry

set nobackup
set noswapfile
set nowb

set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

autocmd FileType python highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
autocmd FileType python match OverLength /\%81v.\+/

let g:pydiction_location='/home/ubuntu/.vim/bundle/Pydiction/complete-dict'

let python_highlight_all=1
let python_slow_sync=1
let python_print_as_function=1

colorscheme mustang

" highlight SaltStack files as YAML
au BufReadPost *.sls set syntax=yaml

set wildmenu
set hlsearch
set autoindent
set nostartofline
set path+=**
set wildignore+=*/node_modules/*,*/__pycache__/*,*/.expo/*,*/.expo-shared/*
set number relativenumber
set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 softtabstop=0 smarttab
filetype plugin indent on

packloadall
syntax enable
colorscheme dracula

let g:ale_disable_lsp = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
let g:ale_fixers = {'javascript': ['prettier'], 'python': ['black', 'isort']}

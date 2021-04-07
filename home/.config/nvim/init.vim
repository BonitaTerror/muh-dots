set nocompatible
set wildmenu
set hlsearch
set autoindent
set nostartofline
set path+=**
set wildignore=*.pyc,*/venv/*,*/node_modules/*
set number relativenumber
set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 softtabstop=0 smarttab

set runtimepath+=/home/alexander/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/alexander/.local/share/dein')
	call dein#begin('/home/alexander/.local/share/dein')

	" Let dein manage dein
	call dein#add('/home/alexander/.local/share/dein/repos/github.com/Shougo/dein.vim')

	call dein#add('Shougo/deoplete.nvim')
	call dein#add('dracula/vim')
	call dein#add('deoplete-plugins/deoplete-jedi')
	call dein#add('deoplete-plugins/deoplete-go')
	call dein#add('racer-rust/vim-racer')
	call dein#add('dense-analysis/ale')
	call dein#add('junegunn/goyo.vim')

	call dein#end()
	call dein#save_state()
endif
if dein#check_install()
	call dein#install()
endif

filetype plugin indent on
syntax enable

colorscheme dracula

let g:ale_disable_lsp = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
let g:ale_fixers = {'javascript': ['prettier'], 'python': ['black', 'isort'], 'rust': ['rustfmt'], 'go': ['gofmt']}
let g:deoplete#enable_at_startup = 1
let g:ale_completion_enabled = 0
set completeopt-=preview

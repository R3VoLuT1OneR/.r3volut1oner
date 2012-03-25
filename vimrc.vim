" Auto load modules. module autoload/pathogen.vim
call pathogen#infect()
syntax on
filetype plugin indent on

" Load mouse
set mouse=a
set mousemodel=popup

" NERDTree Hot Keys
nmap <F3> <Esc>:NERDTree<cr>
vmap <F3> <Esc>:NERDTree<cr>
imap <F3> <Esc>:NERDTree<cr>

" Set line numbers
set nu

" VIM colors
set t_Co=256

" Tabs config
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Tlist configs
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File    = 1

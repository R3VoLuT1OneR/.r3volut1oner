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

" tag <a>
nmap <;h> <a href=""></a><ESC>5hi

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

" Moving windows
" set wmw=0
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k

" Mini Bufer Explorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"
" Highlight extra white spaces and more then 80 lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

highlight ExtraWhitespace ctermbg=red guibg=white
match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()

" Tag list config for perl Moose
let tlist_perl_settings = 'perl;u:use;p:package;r:role;e:extends;c:constant;a:attribute;s:subroutine;l:label'

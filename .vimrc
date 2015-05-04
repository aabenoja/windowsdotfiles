set nocompatible
set clipboard=unnamed

set backspace=indent,eol,start
set number

set backupdir=~/vimfiles/backups
set directory=~/vimfiles/swaps

set expandtab
set shiftwidth=2
set softtabstop=2

set encoding=utf-8

set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'elzr/vim-json'
Plugin 'othree/yajs.vim'

call vundle#end()
filetype plugin indent on

syntax enable

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let g:jsx_ext_required=0

nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<SPACE>
nnoremap tm :tabm<SPACE>
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>


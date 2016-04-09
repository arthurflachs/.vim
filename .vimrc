set nocompatible
filetype off

set wildignore+=*/node_modules/*
set list

" Set pl extension to prolog
let g:filetype_pl="prolog"

" Vundle -------------------------- {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" VIM plugins --------------------- {{{
Plugin 'embear/vim-localvimrc'
Plugin 'Raimondi/delimitMate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
" }}}

" Git plugins -------------------- {{{
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'
" }}}

" JSON plugins -------------------- {{{
Plugin 'elzr/vim-json'
" }}}

" Javascript plugins -------------- {{{
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/syntastic-local-eslint.vim'
" }}}

" HTML plugins ------------------------ {{{
Plugin 'mattn/emmet-vim'
Plugin 'lambdatoast/elm.vim'
" }}}

" CSS plugins ----------------------------------------------------- {{{
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
" }}}

" IO plugins -------------- {{{
Plugin 'andreimaxim/vim-io'
" }}}

" Prolog plugins ----------------- {{{
Plugin 'adimit/prolog.vim'
" }}}

call vundle#end()

" }}}


" DelimitMate options ------------------------ {{{
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
" }}}

" Syntastic options --------------- {{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_css_checkers = ['stylelint']
" }}}

" Localvimrc options ----------------------------- {{{
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0
" }}}

" vim-jsx options ---------------------- {{{
let g:jsx_ext_required = 0
" }}}

" HTML settings ---------------------- {{{
" }}}

" CTAGS mappings --------------------- {{{
nnoremap <leader><leader> <C-]>
nnoremap <leader><C-v> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <leader><BS> <C-t>
" }}}


filetype plugin on
filetype indent on

set foldmethod=marker
syntax enable

" Vim basic mappings ---------------------------- {{{
let mapleader = "\<Space>"

inoremap <esc> <nop>
inoremap jk <esc>
inoremap kj <esc>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" }}}

" Vim abbrev lexical --------------------------{{{
iabbrev instuctor instructor
iabbrev instuctors instructors
" }}}

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set wrap
set wildignore+=**/node_modules

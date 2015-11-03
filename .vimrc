set nocompatible
filetype off

set wildignore+=*/node_modules/*
set list

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
" }}}

" HTML plugins ------------------------ {{{
Plugin 'mattn/emmet-vim'
" }}}

call vundle#end()

" }}}


" DelimitMate options ------------------------ {{{
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
" }}}

" Syntastic options --------------- {{{
let g:syntastic_javascript_checkers = ['eslint']
" }}}

" Localvimrc options ----------------------------- {{{
let g:localvimrc_ask=0
" }}}

" vim-jsx options ---------------------- {{{
let g:jsx_ext_required = 0
" }}}

" HTML settings ---------------------- {{{
" }}}


filetype plugin on
filetype indent on

set foldlevelstart=0
set foldmethod=marker
syntax enable

" Vim basic mappings ---------------------------- {{{
let mapleader = "\<Space>"

inoremap <esc> <nop>
inoremap jk <esc>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
" }}}

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set wrap
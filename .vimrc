set nocompatible
filetype off

set wildignore+=*/node_modules/*
set list

" Set pl extension to prolog
let g:filetype_pl="prolog"

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute ", "trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]

" Vundle -------------------------- {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" VIM plugins --------------------- {{{
Plugin 'embear/vim-localvimrc'
Plugin 'Raimondi/delimitMate'
Plugin 'ctrlpvim/ctrlp.vim'
if !has('nvim')
    Plugin 'Valloric/YouCompleteMe'
else
    Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plugin 'neomake/neomake'
    Plugin 'benjie/neomake-local-eslint.vim'
    Plugin 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
    Plugin 'hkupty/iron.nvim', { 'do': ':UpdateRemotePlugins' }
    Plugin 'ervandew/supertab'
endif
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
Plugin 'altercation/vim-colors-solarized'
Plugin 'iCyMind/NeoSolarized'
Plugin 'mhartington/oceanic-next'
Plugin 'vim-airline/vim-airline'
Plugin 'Shougo/vimproc.vim'
Plugin 'nathanaelkane/vim-indent-guides'
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
Plugin 'moll/vim-node'
" }}}

" Typescript plugins ----------------- {{{
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
" }}}

" HTML plugins ------------------------ {{{
Plugin 'mattn/emmet-vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'indenthtml.vim'
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

" PHP plugins -------------------- {{{
Plugin 'jwalton512/vim-blade'
Plugin 'shawncplus/phpcomplete.vim'
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

" Indent Guides ----------------------- {{{
hi IndentGuidesOdd ctermbg=black
hi IndentGuidesEvent ctermbg=lightgrey
" }}}

" Nvim term settings ----------------- {{{
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <M-h> <C-\><C-w>h
    tnoremap <M-j> <C-\><C-w>j
    tnoremap <M-k> <C-\><C-w>k
    tnoremap <M-l> <C-\><C-w>l
    nnoremap <M-h> <C-w>h
    nnoremap <M-j> <C-w>j
    nnoremap <M-k> <C-w>k
    nnoremap <M-l> <C-w>l
endif
" }}}

" Neomake settings ------------------- {{{
if has('nvim')
    let g:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
    let g:neomake_javascript_enabled_makers = ['eslint']
    let g:neomake_javascript_eslint_exe = substitute(g:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
    autocmd! BufWritePost * Neomake
    nnoremap <leader><leader> :ll<CR>
    let g:neomake_open_list = 2
    let g:neomake_place_signs = 1

    let g:stylelint_path = system('PATH=$(npm bin):$PATH && which stylelint')
    let g:neomake_css_enabled_makers = ['stylelint']
    let g:neomake_css_stylelint_exe=substitute(g:stylelint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '/1', '')
endif
" }}}

let g:python_host_prog = '/Users/arthur/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/arthur/.pyenv/versions/neovim3/bin/python'
let g:deoplete#enable_at_startup = 1

filetype plugin on
filetype indent on

set foldmethod=marker
syntax enable
set termguicolors
set t_Co=256

set background=dark
colorscheme OceanicNext
let g:airline_theme='oceanicnext'

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

set backspace=2
set clipboard=unnamed
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set wrap
set wildignore+=**/node_modules

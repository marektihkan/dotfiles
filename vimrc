set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sjl/gundo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'chase/vim-ansible-yaml'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme molokai

syntax on
set number
set history=500 " keep 500 lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set list
set listchars=tab:▸\ ,eol:¬
set backupdir=~/.tmp
set directory=~/.tmp
set hidden
set spell
set spelllang=en_us

set ts=4
set sts=4
set sw=4
set expandtab

set laststatus=2
set clipboard=unnamed

" CtrlP settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|node_modules\|bin\|\.hg\|\.svn\|build\|log\|resources\|coverage\|doc\|tmp\|public/assets\|vendor\',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }

" Enable file type detection
filetype on

" Syntax of these languages is fussy over tabs Vs spaces
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType css setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab

let mapleader = ","
imap jj <Esc>
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

" File opening
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%

" Git
map <leader>ga :Gwrite<CR>
map <leader>gs :Gstatus<CR>
map <leader>gc :Gcommit<CR>
map <leader>gd :Gdiff<CR>

" Dash
nmap <silent> <leader>d <Plug>DashSearch

" Window movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Search
nnoremap <leader>a :Ag -i<space>

" Project tree
map <C-n> :NERDTreeToggle<CR>
" Closes Vim when only project tree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'

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

let mapleader = " "
imap jj <Esc>
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
map <leader>tf <C-p>
map <leader>tr <C-p><C-f>
map <leader>tt <C-p><C-f><C-f>
nnoremap <leader>a :Ag -i<space>


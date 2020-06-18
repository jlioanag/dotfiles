" cursor
set nocompatible
set mouse=a
set cursorline

" indentation
set tabstop=2

" search
set hlsearch

" do ":PlugInstall" to install plugins
call plug#begin('~/.config/nvim/plugged')

" make sure to use single quotes

Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'danro/rename.vim'

" goyo and limelight
" note: doesn't work with some wal colors...
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Initialize plugin system
call plug#end()

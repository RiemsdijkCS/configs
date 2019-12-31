set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Basics :
    set nocompatible
    set noshowmode "Disables -- INSERT -- (due to using lightline plugin)
    filetype plugin on
    set laststatus=2
    syntax on
    set encoding=utf-8
    set number relativenumber
" Enable autocompletion:
    set wildmode=longest,list,full
" Autocomplete {}, (), []
    set smartindent
    set tabstop=4
    set shiftwidth=4
    set expandtab

    inoremap {<cr> {<cr>}<c-o><s-o>
    inoremap [<cr> [<cr>]<c-o><s-o>
    inoremap (<cr> (<cr>)<c-o><s-o>
" Splits open at the bottom and right, whihc is non-retardedm unlike vim def.
    set splitbelow splitright
"Shortcutting split navigation, saving a keypress:
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
"Fixing YCM scratch preview:
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_autoclose_preview_window_after_completion = 1

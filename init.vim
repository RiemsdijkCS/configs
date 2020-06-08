syntax on

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
"set nowrap
set smartcase
set noswapfile
set incsearch
set termguicolors
set scrolloff=8

" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'  
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/rainbow_parentheses.vim'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
let mapleader = " "
colorscheme gruvbox
set background=dark

" use <tab> for trigger completion and navigate to the next complete item
 function! s:check_back_space() abort
   let col = col('.') - 1
     return !col || getline('.')[col - 1]  =~ '\s'
     endfunction

     inoremap <silent><expr> <Tab>
           \ pumvisible() ? "\<C-n>" :
                 \ <SID>check_back_space() ? "\<Tab>" :
                       \ coc#refresh()

" Code/File navigation
nnoremap <C-p> :GFiles<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gi <Plug>(coc-implementation)

" Vim vuGITive
nmap <leader>gs :G<CR>
nmap <C-p> :GFiles<CR>

" Traversing through windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Vimtex config
let g:tex_flavor = 'latex'
let g:rainbow#pairs = [['(',')'], ['[', ']'], ['{', '}']] 
au VimEnter * RainbowParentheses

" Enter functionality for Vim
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()<CR>"




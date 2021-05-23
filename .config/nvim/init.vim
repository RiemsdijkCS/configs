set completeopt=menuone,noselect
set mouse=a

call plug#begin()
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'shaunsingh/moonlight.nvim'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'sbdchd/neoformat'
Plug 'simrat39/symbols-outline.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'folke/todo-comments.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neovim/nvim-lspconfig'
Plug 'junegunn/fzf.vim'  
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

let mapleader = " "
let g:chris = "moonlight"
call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:chris])

lua require("chris")

" Vim vuGITive
nmap <leader>gs :G<CR>
nmap <C-p> :GFiles<CR>

" Traversing through windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>



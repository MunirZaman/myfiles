syntax on
set encoding=utf-8

filetype plugin on

set relativenumber
set ruler

set cursorline
set cursorcolumn

set smartindent
set smartcase

set shiftwidth=4
set tabstop=4
set expandtab

set splitbelow
set splitright

set termguicolors

let mapleader = " "

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'lervag/vimtex' " For LaTeX

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'pineapplegiant/spaceduck'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" AutoCompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_node_path = 'C:/Program Files/nodejs/node.exe'

" Syntax
Plug 'sheerun/vim-polyglot'

" Terminal
Plug 'akinsho/toggleterm.nvim'

call plug#end()

colorscheme gruvbox 

let NERDTreeWinPos='right'
let NERDTreeWinSize=40

source <sfile>:h/lualine_config.vim 
source <sfile>:h/keymaps.vim
source <sfile>:h/bufferline_config.vim

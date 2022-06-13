syntax on
set spl=en spell 
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

Plug 'lervag/vimtex', {'for' : 'latex'} " For LaTeX
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
" Markdown
Plug 'iamcco/markdown-preview.nvim', {'for' : 'markdown'}
Plug 'ellisonleao/glow.nvim', {'branch': 'main', 'for' : 'markdown'}
let g:glow_binary_path = "C:/glow"
let g:glow_border = "rounded"
Plug '907th/vim-auto-save'
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ['InsertLeave'] 
" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'pineapplegiant/spaceduck'
Plug 'marko-cerovac/material.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'glepnir/dashboard-nvim'
let g:dashboard_default_executive ='telescope'
let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

Plug 'kyazdani42/nvim-tree.lua'
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

colorscheme nord

setlocal spell
inoremap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-shell-escape',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" execute latexmk -c when exiting tex file
au BufWinLeave *.tex silent !latexmk -c

source <sfile>:h/lualine_config.vim 
source <sfile>:h/keymaps.vim
source <sfile>:h/bufferline_config.vim
source <sfile>:h/nvimtree_config.vim

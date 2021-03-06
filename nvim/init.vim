syntax on
"spelling
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

call plug#begin('~/AppData/Local/nvim/plugged')
"Latex
Plug 'lervag/vimtex', {'for' : 'tex'} 
Plug 'SirVer/ultisnips'
Plug 'hura/vim-asymptote'
Plug 'AndOrangutan/nabla.nvim'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
"Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'ellisonleao/glow.nvim', {'branch': 'main', 'for' : 'markdown'}
let g:mkdp_browser = 'firefox'
let g:glow_binary_path = "C:/glow"
let g:glow_border = "rounded"
"Autosave
Plug '907th/vim-auto-save'
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ['InsertLeave'] 
"Colorschemes
Plug 'morhetz/gruvbox'
Plug 'pineapplegiant/spaceduck'
Plug 'marko-cerovac/material.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'catppuccin/nvim', {'as' : 'catppuccin'}

Plug 'kyazdani42/nvim-tree.lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-lua/plenary.nvim' " Telescope uses this plugin
Plug 'nvim-telescope/telescope.nvim'
" Bufferline and Status line
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
" Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
"Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_node_path = 'C:/Program Files/nodejs/node.exe'
"Syntax
Plug 'sheerun/vim-polyglot'
"Terminal
Plug 'akinsho/toggleterm.nvim'
call plug#end()

colorscheme catppuccin
let g:catppuccin_flavour = "macchiato" " latte, frappe, macchiato, mocha

"use latexmk for compiling
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


source <sfile>:h/keymaps.vim
source <sfile>:h/configs/bufferline.vim
source <sfile>:h/configs/lualine.vim 
source <sfile>:h/configs/nvimtree.vim
source <sfile>:h/configs/toggleterm.vim

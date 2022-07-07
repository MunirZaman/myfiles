" Set leader to space bar
let mapleader = " "
let maplocalleader = " "

setlocal spell
"fix spelling with Ctrl-L
inoremap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u


" Window Navigation
" Navigate to left window.
nnoremap <C-h> <C-w>h
" Navigate to down window.
nnoremap <C-j> <C-w>j
" Navigate to top window.
nnoremap <C-k> <C-w>k
" Navigate to right window.
nnoremap <C-l> <C-w>l


" Indent controls
" Reselect text ater indent/unindent.
vnoremap < <gv
vnoremap > >gv
" Tab to indent in visual mode.
vnoremap <Tab> >gv
" Shift+Tab to unindent in visual mode.
vnoremap <S-Tab> <gv


" COC Keybinds
" Remap keys for gotos
map <leader>cd <Plug>(coc-definition)
nmap <leader>ct <Plug>(coc-type-definition)
nmap <leader>ci <Plug>(coc-implementation)
map <leader>cr <Plug>(coc-references)
" Remap for rename current word
nmap <leader>crn <Plug>(coc-rename)
" Remap for format selected region
xmap <leader>cf <Plug>(coc-format-selected)
nmap <leader>cf <Plug>(coc-format-selected)
" Fix current line
nmap <leader>cfl  <Plug>(coc-fix-current)
" Using CocList
" Show all diagnostics
nnoremap  <Leader>cdi  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap  <Leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap  <Leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <Leader>co  :<C-u>CocList outline<cr>
" Completion keybinds

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" shift+tab cycles backwards 
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Enter to confirm completion
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

"use <Ctrl-B> for trigger completion 
inoremap <silent><expr> <C-b>
      \ pumvisible() ? "\<C-n>" :
      \ coc#refresh()


" Markdown preview
nmap <Leader>md <Plug>MarkdownPreviewToggle


"fzf
nnoremap <leader><leader> :Telescope find_files<CR>

"terminal
nnoremap <leader>tf :ToggleTerm direction=float<CR>
nnoremap <leader>tt :ToggleTerm direction=tab<CR>
nnoremap <leader>tv :ToggleTerm direction=vertical size=50<CR>


"tree
nnoremap <leader>n :NvimTreeToggle<CR>


"Changing buffers
nnoremap <leader>bv :bprevious<CR>
nnoremap <leader>bb :bnext<CR>
"Deleting buffers
nnoremap <leader>bd :bdelete<CR>


"https://github.com/GideonWolfe/vim.reaper/blob/master/nvim/configs/mappings.vim

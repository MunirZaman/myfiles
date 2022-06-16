"fzf
nnoremap <leader><leader> :Telescope find_files<CR>

"terminal
nnoremap <leader>tf :ToggleTerm direction=float<CR>
nnoremap <leader>tt :ToggleTerm direction=tab<CR>
nnoremap <leader>tv :ToggleTerm direction=vertical size=50<CR>

"tree
nnoremap <leader>n :NvimTreeToggle<CR>

"Changing buffers
nnoremap <leader>v :bprevious<CR>
nnoremap <leader>b :bnext<CR>
"Deleting buffers
nnoremap <leader>d :bdelete<CR>

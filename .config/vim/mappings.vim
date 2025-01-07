"Vim Key-Bindings {{{

"Entering / Exiting Insert Mode
"From https://news.ycombinator.com/item?id=13100718
"during insert, kj escapes, `^ is so that the cursor doesn't move
inoremap kj <ESC>`^

"Tab
:nnoremap <Tab> >>
:inoremap <Tab> <C-T>
:vnoremap <Tab> >

"Untab
:nnoremap <S-Tab> <<
:inoremap <S-Tab> <C-D>
:vnoremap <S-Tab> <

"Moving between buffers
:nnoremap <C-Right> :bnext<CR>
:nnoremap <C-Left> :bprevious<CR>
:nnoremap <C-l> :bnext<CR>
:nnoremap <C-h> :bprev<CR>

"Clipboard paste
":nnoremap <leader>p :.!xclip -selection clipboard -o<CR>
":vnoremap <leader>p :.!xclip -selection clipboard -o<CR>
":noremap <leader>cp :w !xclip -selection clipboard<CR><CR>
:nnoremap <leader>p :.!pbpaste<CR>
:vnoremap <leader>p :.!pbpaste<CR>
:noremap <leader>cp :w !pbcopy<CR><CR>

"Clear highlighting after search
:noremap <leader>k :nohl<CR>

" autocomplete stuff
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" debugging
nmap <silent> <leader>td :lua require('dap-go').debug_test()<CR>

" toggle git blame
nmap <leader>gb :GitBlameToggle<CR>
nmap <leader>go :GitBlameOpenFileURL<CR>
vmap <leader>go :GitBlameOpenFileURL<CR>
nmap <leader>gcp :GitBlameCopyFileURL<CR>
vmap <leader>gcp :GitBlameCopyFileURL<CR>

nmap <leader>tt :GoTest<CR>

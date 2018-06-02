"Vim Key-Bindings {{{

"Entering / Exiting Insert Mode
"From https://news.ycombinator.com/item?id=13100718
"during insert, kj escapes, `^ is so that the cursor doesn't move
inoremap kj <ESC>`^

"jk enters insert mode
nnoremap JK i

"Tab
:nnoremap <Tab> >>
:inoremap <Tab> <C-T>
:vnoremap <Tab> >

"Untab
:nnoremap <S-Tab> <<
:inoremap <S-Tab> <C-D>
:vnoremap <S-Tab> <

"Nerd Tree Setup
:map <C-S-n> :NERDTreeToggle<CR>

"Moving between buffers
:nnoremap <C-Right> :bnext<CR>
:nnoremap <C-Left> :bprevious<CR>
:nnoremap <C-l> :bnext<CR>
:nnoremap <C-h> :bprev<CR>

"Clipboard paste
:nnoremap <leader>p :.!xclip -selection clipboard -o<CR>
:vnoremap <leader>p :.!xclip -selection clipboard -o<CR>
:noremap <leader>cp :w !xclip -selection clipboard<CR><CR>

"Clear highlighting after search
:noremap <leader>k :nohl<CR>

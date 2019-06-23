" .vimrc
" author: Gabriel Vacaliuc (gv8@rice.edu)
" MIT License

" gets vim-plug information
if filereadable(expand("$HOME/.config/vim/plugins.vim"))
  source $HOME/.config/vim/plugins.vim 
endif

" helper functions
if filereadable(expand("$HOME/.config/vim/functions.vim"))
  source $HOME/.config/vim/functions.vim
endif

"   Syntax Highlighting
syntax on

"   Set Leader to Space
let mapleader = " "

set nowrap "Don't wrap lines
set smartcase "Search Case-Sensitive only if caps involved
set hlsearch "Highligts search terms
set incsearch "Shows search terms as I type
set history=100 "Remember 100 commands
set undolevels=100 "Lots of undo levels
set encoding=utf-8 "UTF8 encoding
"set hidden "Allow switching from unsaved buffers!

"   Maps ; -> : in normal mode
nnoremap ; :

"   Add Line Numbers
:set number

"   Add a solid line at 80 columns
set colorcolumn=80


"  settings / config
if filereadable(expand("$HOME/.config/vim/config.vim"))
    source $HOME/.config/vim/config.vim
endif

"  sets theme
if filereadable(expand("$HOME/.config/vim/theme.vim"))
    source $HOME/.config/vim/theme.vim
endif

"  all key mappings
if filereadable(expand("$HOME/.config/vim/mappings.vim"))
    source $HOME/.config/vim/mappings.vim
endif

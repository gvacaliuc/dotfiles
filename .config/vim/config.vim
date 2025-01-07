"Initial Customizations {{{
" Syntax Highlighting
syntax on

" Set Leader to Space
let mapleader = " "

set re=2
set nowrap "Don't wrap lines
set smartcase "Search Case-Sensitive only if caps involved
set hlsearch "Highligts search terms
set incsearch "Shows search terms as I type
set history=100 "Remember 100 commands
set undolevels=100 "Lots of undo levels
set encoding=utf-8 "UTF8 encoding

"set terminal title to the current open buffer name
"https://vim.fandom.com/wiki/Automatically_set_screen_title
set title
set titlestring=vim,%{expand(\"%:p:h\")}/%t%(\ %M%)

"   Maps ; -> : in normal mode
nnoremap ; :

"   Add Line Numbers
:set number

"   Add a solid line at 80 columns
set colorcolumn=80
"}}} End Initial Customizations


"Airline Theme {{{
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" Jedi Preview fucks up vim-airline
let g:airline_exclude_preview = 1
"}}} End Airline Theme

"Tab Setup {{{
set expandtab  "Expands tabs to spaces"
set tabstop=2  "Tabs are 4 col. wide"
set shiftwidth=2 "Indents are 4 col. over"
set softtabstop=2 "Sets num. of col. for TAB"
"}}} End Tab Setup

"CTRLP {{{
let g:ctrlp_follow_symlinks = 0
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|\.?node_modules|data|_book)$'
let g:ctrlp_max_files = 100000
"}}} END CTRLP 

"clang-format {{{
autocmd BufWritePre *.h,*.c,*.cpp call FormatCFamilyLanguageOnSave()
"}}}

" specific language tab setup {{{
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype tex setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
" }}}

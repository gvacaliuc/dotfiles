"Initial Customizations {{{

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

"}}} End Initial Customizations


"Airline Theme {{{
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"   Jedi Preview fucks up vim-airline
let g:airline_exclude_preview = 1
"}}} End Airline Theme

"Tab Setup {{{
set expandtab  "Expands tabs to spaces"
set tabstop=4  "Tabs are 4 col. wide"
set shiftwidth=4 "Indents are 4 col. over"
set softtabstop=4 "Sets num. of col. for TAB"
"}}} End Tab Setup


"YCM Setup {{{
"   Enable Jedi to find virtualenvs instead of absolute python
let g:ycm_python_binary_path = 'python'
"   Close suggestion window after selection
let g:ycm_autoclose_preview_window_after_completion=1
"}}} End YCM Setup 


"Begin Session Setup {{{
let g:session_directory = '~/.vim/sessions'
"   Auto-Save open session
let g:session_autosave = 'yes'
"}}} End Session Setup

"Latex Live Preview Setup {{{
let g:livepreview_previewer = 'evince'
let g:livepreview_engine = 'pdflatex' . ' -halt-on-error' . ' -shell-escape'
"}}} End Latex Live Preview Setup

"CTRLP {{{
let g:ctrlp_follow_symlinks = 0
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|\.?node_modules|data|_book)$'
"}}} END CTRLP 

"clang-format {{{
autocmd BufWritePre *.h,*.c,*.cpp call FormatCFamilyLanguageOnSave()
"}}}

"set nocompatible    " be iMproved, required
"filetype off    " required

"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" Fuzzy File Search
Plug 'ctrlpvim/ctrlp.vim'

"Paren / Quote Closing
Plug 'jiangmiao/auto-pairs'

"Commenting
Plug 'scrooloose/nerdcommenter'

"Markdown Support
Plug 'godlygeek/tabular'

"Theme / Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Auto-Complete + Syntax suggestions
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

"Base-16 color themes
Plug 'chriskempson/base16-vim'

"Nice Sessioning
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

"Unix sugar
Plug 'tpope/vim-eunuch'

"Paren / Tag Surrounding
Plug 'tpope/vim-surround'

" A Vim Plug for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview'

"Writing Prose
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-pencil'

call plug#end()            " required
filetype plugin indent on    " required

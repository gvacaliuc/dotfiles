set nocompatible    " be iMproved, required
filetype off    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Fuzzy File Search
Plugin 'ctrlpvim/ctrlp.vim'

"Paren / Quote Closing
Plugin 'jiangmiao/auto-pairs'

"Commenting
Plugin 'scrooloose/nerdcommenter'

"Markdown Support
Plugin 'godlygeek/tabular'

"Theme / Powerline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Auto-Complete + Syntax suggestions
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

"Base-16 color themes
Plugin 'chriskempson/base16-vim'

"Nice Sessioning
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'

"Unix sugar
Plugin 'tpope/vim-eunuch'

"Paren / Tag Surrounding
Plugin 'tpope/vim-surround'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'

"Writing Prose
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'reedes/vim-pencil'

call vundle#end()            " required
filetype plugin indent on    " required

" Installation of fzf"
set rtp+=~/.fzf

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ


"set nocompatible    " be iMproved, required
"filetype off    " required

"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

"Syntax highlighting / indentation
Plug 'sheerun/vim-polyglot'

Plug 'chikamichi/mediawiki.vim'

" Fuzzy File Search
Plug 'ctrlpvim/ctrlp.vim'

"Paren / Quote Closing
Plug 'jiangmiao/auto-pairs'

"Commenting
Plug 'scrooloose/nerdcommenter'

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

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()            " required
filetype plugin indent on    " required

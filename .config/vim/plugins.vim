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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'

call plug#end()            " required
filetype plugin indent on    " required

" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()

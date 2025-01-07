call plug#begin()

"Syntax highlighting / indentation
Plug 'sheerun/vim-polyglot'

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

"Base-16 color themes
Plug 'chriskempson/base16-vim'

"Unix sugar
Plug 'tpope/vim-eunuch'

" neovim lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" git
Plug 'nvim-lua/plenary.nvim'
Plug 'petertriho/cmp-git'
Plug 'f-person/git-blame.nvim'

" neovim debugging
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'leoluz/nvim-dap-go'

" golang development
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua'

call plug#end()

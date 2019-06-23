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

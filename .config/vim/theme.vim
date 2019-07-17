"common color-scheme
"https://github.com/chriskempson/base16-shell
"https://github.com/chriskempson/base16-vim
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

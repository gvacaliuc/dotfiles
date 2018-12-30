{ pkgs, ... }:

{
  programs.vim = {
    enable = true;

    settings = {
      expandtab = true;
      history = 1000;
      mousehide = true;
      number = true;
      shiftwidth = 4;
      smartcase = true;
      tabstop = 4;
    };

    extraConfig = ''
      " gets vim-plug information
      if filereadable(expand("$HOME/.config/vim/plugins.vim"))
          source $HOME/.config/vim/plugins.vim 
      endif
   
      " helper functions
      if filereadable(expand("$HOME/.config/vim/functions.vim"))
          source $HOME/.config/vim/functions.vim
      endif

      " syntax highlighting
      syntax on
      
      " set leader to space
      let mapleader = " "
      
      set nowrap "Don't wrap lines
      set hlsearch "Highligts search terms
      set incsearch "Shows search terms as I type
      set undolevels=1000 "Lots of undo levels
      set encoding=utf-8 "UTF8 encoding
      
      "Maps ; -> : in normal mode
      nnoremap ; :
      
      " add line numbers
      :set number
      
      " add a solid line at 80 columns
      set colorcolumn=80
      
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
      let g:ycm_key_list_select_completion=["<tab>"]
      let g:ycm_key_list_previous_completion=["<S-tab>"]
      let g:ycm_rust_src_path = '/home/gvacaliuc/.vim/plugged/YouCompleteMe/rust-src/rust-1.29.0/src'
      let g:ycm_max_diagnostics_to_display = 10000
      "}}} End YCM Setup 
      
      "Begin Session Setup {{{
      let g:session_directory = '~/.vim/sessions'
      "   Auto-Save open session
      let g:session_autosave = 'yes'
      "}}} End Session Setup
      
      "Latex Live Preview Setup {{{
      let g:livepreview_previewer = 'zathura'
      let g:livepreview_engine = 'arara'
      "}}} End Latex Live Preview Setup
      
      "CTRLP {{{
      let g:ctrlp_follow_symlinks = 0
      let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|\.?node_modules|data|_book)$'
      "}}} END CTRLP 
      
      "clang-format {{{
      autocmd BufWritePre *.h,*.c,*.cpp call FormatCFamilyLanguageOnSave()
      "}}}
      
      " snippets setup {{{
      
      " Trigger configuration.
      let g:UltiSnipsExpandTrigger = "<nop>"
      let g:ulti_expand_or_jump_res = 0
      function ExpandSnippetOrCarriageReturn()
          let snippet = UltiSnips#ExpandSnippetOrJump()
          if g:ulti_expand_or_jump_res > 0
              return snippet
          else
              return "\<CR>"
          endif
      endfunction
      inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
      let g:UltiSnipsJumpForwardTrigger="<tab>"
      let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
      
      " If you want :UltiSnipsEdit to split your window.
      let g:UltiSnipsEditSplit="vertical"
      " }}}
      
      " specific language tab setup {{{
      autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
      autocmd Filetype tex setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
      " }}}

      "common color-scheme
      "https://github.com/chriskempson/base16-shell
      "https://github.com/chriskempson/base16-vim
      if filereadable(expand("~/.vimrc_background"))
          let base16colorspace=256
          source ~/.vimrc_background
      endif
   
      "Vim Key-Bindings {{{

      "Entering / Exiting Insert Mode
      "From https://news.ycombinator.com/item?id=13100718
      "during insert, kj escapes, `^ is so that the cursor doesn't move
      inoremap kj <ESC>`^

      "jk enters insert mode
      nnoremap JK i

      "Tab
      :nnoremap <Tab> >>
      :inoremap <Tab> <C-T>
      :vnoremap <Tab> >

      "Untab
      :nnoremap <S-Tab> <<
      :inoremap <S-Tab> <C-D>
      :vnoremap <S-Tab> <

      "Nerd Tree Setup
      :map <C-S-n> :NERDTreeToggle<CR>

      "Moving between buffers
      :nnoremap <C-Right> :bnext<CR>
      :nnoremap <C-Left> :bprevious<CR>
      :nnoremap <C-l> :bnext<CR>
      :nnoremap <C-h> :bprev<CR>

      "Clipboard paste
      :nnoremap <leader>p :.!xclip -selection clipboard -o<CR>
      :vnoremap <leader>p :.!xclip -selection clipboard -o<CR>
      :noremap <leader>cp :w !xclip -selection clipboard<CR><CR>

      "Clear highlighting after search
      :noremap <leader>k :nohl<CR>

      "}}}
    '';
  };
}

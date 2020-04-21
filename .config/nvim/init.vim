
"edit----------------------------------------------------------
source $XDG_CONFIG_HOME/nvim/settings/edit.vim

"macro---------------------------------------------------------
source $XDG_CONFIG_HOME/nvim/settings/macro.vim

"search--------------------------------------------------------
source $XDG_CONFIG_HOME/nvim/settings/search.vim

"show----------------------------------------------------------
source $XDG_CONFIG_HOME/nvim/settings/show.vim

"plugins-------------------------------------------------------
source $XDG_CONFIG_HOME/nvim/plugins/script/dein.vim

"others(binary)------------------------------------------------
source $XDG_CONFIG_HOME/nvim/others/binary.vim

"short_cat_key-------------------------------------------------
autocmd MyAutoCmd VimEnter * call s:foofoo()

  function s:foofoo()
    call defx#custom#option('_', {
        \ 'columns': 'icons:filename',
        \ })
  endfunction

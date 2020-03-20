" ------------------------------------------------------------ AUTOCOMMANDS

" Reload Vim when .vimrc is changed
augroup reload_vimrc
  autocmd!
  autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
augroup END


" ------------------------------------------------------------ DEIN

if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  " dein
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " functionality
  " call dein#add('w0rp/ale')
  call dein#add('Olical/vim-enmasse')
  " call dein#add('vim-scripts/auto-pairs-gentle')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim')
  call dein#add('moll/vim-bbye')
  call dein#add('matze/vim-move')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-repeat')
  call dein#add('christoomey/vim-conflicted')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('tpope/vim-commentary')
  call dein#add('chrisbra/NrrwRgn')
  call dein#add('junegunn/goyo.vim')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('Shougo/denite.nvim')
  call dein#add('camspiers/lens.vim')
  call dein#add('chemzqm/denite-git')
  call dein#add('wellle/targets.vim')

  " file explorer
  call dein#add('Shougo/defx.nvim')
  call dein#add('kristijanhusak/defx-icons')

  " display
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('airblade/vim-gitgutter')
  " call dein#add('ryanoasis/vim-devicons')

  " behavior
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('wuz/ProjectLevel')
  call dein#add('tpope/vim-sleuth')
  call dein#add('Shougo/neoyank.vim')

  " completion
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

  " languages
  call dein#add('sheerun/vim-polyglot')
  call dein#add('AndrewRadev/tagalong.vim')
  call dein#add('captbaritone/better-indent-support-for-php-with-html')

  " colors
  call dein#add('dankneon/vim')
  call dein#add('ntk148v/vim-horizon')
  call dein#add('romainl/Apprentice')

  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
syntax enable

" ------------------------------------------------------------ DEIN
if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin(expand('~/.cache/dein'))

  call dein#add('/Users/wuz/.cache/dein/repos/github.com/Shougo/dein.vim')

  " linting
  call dein#add('w0rp/ale')

  call dein#add('matze/vim-move')
  call dein#add('moll/vim-bbye')

	" colors
  call dein#add('rafi/awesome-vim-colorschemes')
  call dein#add('DankNeon/vim')

  " display
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('scrooloose/nerdtree')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim')
  call dein#add('kien/ctrlp.vim')

	" behavior
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('vim-scripts/auto-pairs-gentle')
  call dein#add('wuz/NerdIgnore')
  call dein#add('wuz/ProjectLevel')
  call dein#add('tpope/vim-sleuth')

  " functionality
  call dein#add('rking/ag.vim')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-surround')
  call dein#add('terryma/vim-multiple-cursors')

  " deoplete
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('honza/vim-snippets')
  call dein#add('wokalski/autocomplete-flow')

  call dein#add('Olical/vim-enmasse')

  " languages
  call dein#add('sheerun/vim-polyglot')

  call dein#add('tpope/vim-git')

  call dein#add('captbaritone/better-indent-support-for-php-with-html')

  call dein#add('mattn/emmet-vim')

  call dein#add('othree/jspc.vim')
  call dein#add('isRuslan/vim-es6')
  call dein#add('moll/vim-node')
  call dein#add('MaxMEllon/vim-jsx-pretty')

  call dein#add('ledger/vim-ledger')

  call dein#add('ap/vim-css-color')
  call dein#add('gko/vim-coloresque')

  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
syntax enable

" function! DoRemote(arg)
"   UpdateRemotePlugins
" endfunction

" " Functionality
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'itchyny/vim-cursorword'
" Plug 'easymotion/vim-easymotion'
" Plug 'vim-scripts/mru.vim'
" Plug 'terryma/vim-expand-region'
" Plug 'Raimondi/delimitMate'

" Plug 'benmills/vimux'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
" Plug 'Shougo/neco-syntax'
" Plug 'mbbill/undotree'
" Plug 'jsfaint/gen_tags.vim'
" Plug 'PeterRincker/vim-argumentative'
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-easymotion.vim'
" Plug 'ruanyl/vim-fixmyjs'
" Plug 't9md/vim-choosewin'
" Plug 'kana/vim-niceblock'
" Plug 'haya14busa/vim-asterisk'
" Plug 'terryma/vim-smooth-scroll'
" Plug 'majutsushi/tagbar'

" " Syntax & Languages
" Plug 'ervandew/supertab'
" Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
" " Plug 'ternjs/tern_for_vim' " NOT WORKING CURRENTLY

" ------------------------------------------------------------ OMNIFUNC
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

" ------------------------------------------------------------ LOOKS
hi Normal ctermbg=NONE guibg=NONE
set lazyredraw
if (has("termguicolors"))
 set termguicolors
endif
syntax on

set background=dark
colorscheme dank-neon

highlight VertSplit ctermbg=NONE
set cursorline

" ------------------------------------------------------------ FOLDING MARKERS
set foldmarker=#--,--
set foldlevel=0
set foldmethod=marker

" Reload Vim when .vimrc is changed
augroup reload_vimrc
  autocmd!
  autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
augroup END

" ------------------------------------------------------------ FZF

let g:fzf_tags_command = 'ctags --extra=+f -R'
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" ------------------------------------------------------------ Terminal Mode
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" ------------------------------------------------------------ Mappings

let mapleader="\<Space>"              " leader is <space>

" use leader-\ to open nerdtree
noremap <leader>\ :NERDTreeToggle<CR>
" use leader-/ to open FZF
noremap <leader>/ :Files<CR>
nmap <Leader>b :Buffers<CR>
" open up Silver Searcher with <space>a
nnoremap <Leader>a :Ag 
" insert line with <space>Enter
nnoremap <Leader><CR> o<esc>
" insert line in insert mode with <ctrl>c
imap <C-c> <CR><Esc>O
" unhighlight everything
nnoremap <Leader>x :noh<CR>
" delete buffer
nnoremap <Leader>q :Bdelete<CR>
" edit location buffer
map <Leader>f :EnMasse<CR>
" Replace word under cursor
map <Leader>r :%s/<c-r><c-w>/

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

nnoremap n nzzzv
nnoremap N Nzzzv

map q: :q

""""" Buffer navigation (<Space>,) (<Space>]) (<Space>[) (<space>ls)
map <Leader>, <C-^>
map <Leader>] :bnext<CR>
map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>

" " <Leader>f{char} to move to {char}
" map  <Leader>e <Plug>(easymotion-bd-f)
" nmap <Leader>e <Plug>(easymotion-overwin-f)
" " s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)
" " Move to line
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)
" " Move to word
" map  <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)

" ------------------------------------------------------------ Completion

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
" Disable the candidates in Comment syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment'])

" ------------------------------------------------------------ Emmet

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" ------------------------------------------------------------ INDENTATION

filetype indent on                    " load filetype-specific indents
set expandtab                         " tabs are spaces
set softtabstop=2                     " number of columns in insert mode
set smartindent                       " indent files smartly
set ts=2 sw=2 et
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_color_change_percent = 5
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" ------------------------------------------------------------ BEHAVIOR

set relativenumber                    " make line numbers relative
set nu                                " show line numbers
set backspace=indent,eol,start        " fix backspace behavior
set laststatus=2                      " Always show status line
set magic                             " enable extended regexes.
set noerrorbells                      " disable annoying error bells
set visualbell                        " disable use visual bells
set ofu=syntaxcomplete#Complete       " Set omni-completion method.
set ttyfast                           " more keys/sec == 1337 H4X0R
set shortmess=atI                     " no stupid intro message
set showmode                          " Show the current mode.
set showtabline=2                     " Always show tab bar.
set lazyredraw                        " Don't redraw all the time
set showmatch                         " highlight matching [{}]
" Move more naturally up/down when wrapping is enabled.
nnoremap j gj
nnoremap k gk

" Don't automatically insert a comment after a comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set notimeout
set ttimeout
set ttimeoutlen=10

" if has('mouse')
"   set mouse=a
" endif

" let s:uname = system("echo -n \"$(uname)\"")
" if !v:shell_error && s:uname == "Linux" && !has('nvim')
"   set ttymouse=xterm
" endif

" nmap  -  <Plug>(choosewin)
" let g:choosewin_overlay_enable = 1

" let g:expand_region_text_objects = {
"       \ 'iw'  :0,
"       \ 'iW'  :0,
"       \ 'i"'  :0,
"       \ 'i''' :0,
"       \ 'i]'  :1,
"       \ 'ib'  :1, 
"       \ 'iB'  :1,
"       \ 'il'  :0,
"       \ 'ip'  :0,
"       \ 'ie'  :0,
"       \ }

" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" ------------------------------------------------------------ SEARCH

set incsearch                         " search as characters are typed
set hlsearch                          " highlight matches
set ignorecase                        " ignore case of searches
set gdefault                          " default to global search
set smartcase                         " ignore ignore case if uppercase letters
set wrapscan                          " Searches wrap around end of file

" ------------------------------------------------------------ WILDMENU
set wildmenu                          " use wildmenu
set wildchar=<TAB>                    " tab complete commands

"""""" IGNORE CERTAIN EXTENSION IN WILDMENU
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
""""""

set wildmode=list:longest             " Complete only until point of ambiguity.
set winminheight=0                    " splits reduced to single line.

" ------------------------------------------------------------ HISTORY
set hidden                            " remember buffer history
set history=1000                      " increase history from 20 to 1000

" ------------------------------------------------------------ UNDO/SWAP/BACKUP
set undofile                                  " persistent undo
set backupdir=~/.config/nvim/backups          " use global backup directory
set directory=~/.config/nvim/swaps            " use global swaps directory
set undodir=~/.config/nvim/undo               " use global undo directory

" ------------------------------------------------------------ SNIPPETS

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:neosnippet#snippets_directory='~/.config/nvim/plugins/repos/github.com/honza/vim-snippets/snippets'

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" ------------------------------------------------------------ COPY/PASTE

""""" LEADER COPY/CUT/PASTE/REPLACE COMMMANDS
" copy to system clipboard
vmap <Leader>y "+y
" cut to system clipboard
vmap <Leader>d "+d
" paste from system clipboard after cursor
vmap <Leader>p "+p
nmap <Leader>p "+p
" paste from system clipboard before cursor
vmap <Leader>P "+P
nmap <Leader>P "+P
" replace selection in file
vmap <Leader>r "hy:%s/<C-r>h//gc<left><left><left>
"""""

" ------------------------------------------------------------ ALE

let g:ale_sign_error = '✖' " Less aggressive than the default '>>'
let g:ale_sign_warning = '»'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 0
let g:ale_echo_msg_error_str = '💀'
let g:ale_echo_msg_warning_str = '📣'
let g:ale_echo_msg_format = '[%severity%]|[%linter%] %s [%severity%]'
" Show 2 lines of errors (default: 10)
let g:ale_list_window_size = 2
let g:ale_fixers = {
\   'javascript': ['eslint', 'importjs', 'trim_whitespace'],
\}
let g:ale_fix_on_save = 1
highlight ALEWarning ctermbg=DarkMagenta
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ------------------------------------------------------------ NERDTREE

autocmd StdinReadPre * let s:std_in=1
let g:NERDTreeWinPos = "right"        " set nerdtree side
function! s:CloseIfOnlyControlWinLeft()
  if winnr("$") != 1
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    q
  endif
endfunction
augroup CloseIfOnlyControlWinLeft
  au!
  au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END

" ------------------------------------------------------------ Extra Functions

autocmd Filetype gitcommit setlocal spell textwidth=72


" ------------------------------------------------------------ Insert Math

map gbc yyp jOscale=2<Esc>:.,+1!bc<CR>kJ

" ------------------------------------------------------------ Random

au BufNewFile,BufRead *.mak set filetype=mako

" ------------------------------------------------------------ Terminal Mode Settings

tnoremap <Esc> <C-\><C-n>
set inccommand=split

" ------------------------------------------------------------ JS

let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1
let g:vim_jsx_pretty_colorful_config = 1

" ------------------------------------------------------------ CTRL-P
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }

" ------------------------------------------------------------ AG
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" ------------------------------------------------------------ STATUSLINE

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? '♥' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?l:branchname:''
endfunction

function! StatusSpace()
  return '  '
endfunction

function! StatusSeperator()
  return ' | '
endfunction

" left
set statusline=%{StatusSpace()}
set statusline+=%#PmenuSel#
set statusline+=%{LinterStatus()}
set statusline+=%{StatusSpace()}
set statusline+=%{StatusSeperator()}
set statusline+=%{StatuslineGit()}
set statusline+=%#Constant#

" right
set statusline+=%=        " Switch to the right side
set statusline+=\ %y
set statusline+=%{StatusSeperator()}
set statusline+=\ %f

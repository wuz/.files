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

" ------------------------------------------------------------ SETUP

let mapleader="\<Space>"   " leader is <space>
let maplocalleader = "\\"  " local leader is \

" Reload Vim when .vimrc is changed
augroup reload_vimrc
  autocmd!
  autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
augroup END

" ------------------------------------------------------------ FUNCTIONALITY

set hidden                            " remember buffer history
set history=1000                      " increase history from 20 to 1000

set undofile                                  " persistent undo
set backupdir=~/.config/nvim/backups          " use global backup directory
set directory=~/.config/nvim/swaps            " use global swaps directory
set undodir=~/.config/nvim/undo               " use global undo directory

" yank to system clipboard
vmap <Leader>y "+y 
" delete to system clipboard
vmap <Leader>d "+d 
" paste from system clipboard
nmap <Leader>p "+p 
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
" replace globally
vmap <Leader>r "hy:%s/<C-r>h//gc<left><left><left>

" make line numbers relative
set relativenumber

" show line numbers
set nu

" fix backspace behavior
set backspace=indent,eol,start

" Always show status line
set laststatus=2

" enable extended regexes.
set magic

" disable annoying error bells
set noerrorbells

" disable use visual bells
set visualbell

" Set omni-completion method.
set ofu=syntaxcomplete#Complete

" more keys/sec == 1337 H4X0R
set ttyfast

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Show the current mode.
set showmode

" Always show tab bar.
set showtabline=2

" Don't redraw all the time
set lazyredraw

" highlight matching [{}]
set showmatch

" Move more naturally up/down when wrapping is enabled.
nnoremap j gj
nnoremap k gk

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set notimeout
set ttimeout
set ttimeoutlen=10

" ------------------------------------------------------------ TERMINAL

" Terminal colors (Dank Neon)
let g:terminal_color_0  = '#191b2a'
let g:terminal_color_1  = '#ac3756'
let g:terminal_color_2  = '#2dad86'
let g:terminal_color_3  = '#ffca7a'
let g:terminal_color_4  = '#7496cc'
let g:terminal_color_5  = '#a37ca9'
let g:terminal_color_6  = '#01a8ad'
let g:terminal_color_7  = '#a5abca'
let g:terminal_color_8  = '#2a2d46'
let g:terminal_color_9  = '#ff476e'
let g:terminal_color_10 = '#39ffba'
let g:terminal_color_11 = '#ffee7a'
let g:terminal_color_12 = '#94bfff'
let g:terminal_color_13 = '#f1b3f1'
let g:terminal_color_14 = '#01f7f7'
let g:terminal_color_15 = '#eff0f6'

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

" ------------------------------------------------------------ VISUAL

set lazyredraw
if (has("termguicolors"))
  set termguicolors
endif
syntax on

" set t_Co=256
set background=dark
" colorscheme apprentice
colorscheme dank-neon
" set guifont=Dank\ Mono:h11
highlight Comment cterm=italic gui=italic
" hi Normal ctermbg=NONE guibg=NONE

highlight VertSplit ctermbg=NONE
set cursorline

" ------------------------------------------------------------ FOLDING MARKERS

set foldmarker=#--,--
set foldlevel=0
set foldmethod=marker


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
let g:indent_guides_exclude_filetypes = ['help', 'netrw']

" ------------------------------------------------------------ FIND/REPLACE

" search as characters are typed
set incsearch
" highlight matches
set hlsearch
" ignore case of searches
set ignorecase
" default to global search
set gdefault
" ignore ignore case if uppercase letters
set smartcase
" Searches wrap around end of file
set wrapscan

" ------------------------------------------------------------ FZF/SEARCH

function! CreateCenteredFloatingWindow(col_pad, row_pad)
    let width = min([&columns - 4, max([80, &columns - a:col_pad])])
    let height = min([&lines - 4, max([20, &lines - a:row_pad])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow(40, 40)' }

let g:lens#disabled_filetypes = ['nerdtree', 'fzf']

let g:fzf_tags_command = 'ctags --extra=+f -R'

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all --ansi --reverse --multi --filepath-word
  \ --color=dark
  \ --color=bg+:#4f5987,bg:#1d1f30,spinner:#39ffba,hl:#858db7
  \ --color=fg:#eff0f6,header:#eff0f6,info:#858db7,pointer:#ff476e
  \ --color=marker:#ff476e,fg+:#a5abca,prompt:#ff476e,hl+:#39ffba
  \ --color=gutter:#2a2d46'

noremap <C-P> :Files<CR>
noremap <C-T> :Tags<CR>
noremap <C-M> :History<CR>
nmap <Leader>b :Buffers<CR>

" open up ripgrep search with <space>a
nnoremap <Leader>a :Rg<CR>

" " run ripgrep search for word under cursor
" nmap <expr> <leader>G ':Rg \b'.expand('<cword>').'\b<cr>'

" run ripgrep search for word under cursor
nnoremap <leader>F :RgWord <CR>

command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>,
                                  \ fzf#vim#with_preview({'options': ['--color', 'hl:9,hl+:14']}), <bang>0
                              \ )

command! -bang -nargs=* Rg call fzf#vim#grep(
                                  \ 'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1, 
                                  \ fzf#vim#with_preview({}), <bang>0
                              \ )

command! -bang -nargs=* RgWord call fzf#vim#grep(
                                  \ 'rg --column --line-number --no-heading --color=always --smart-case --word-regexp '.shellescape(<q-args>), 1, 
                                  \ fzf#vim#with_preview({}), <bang>0
                              \ )


" ------------------------------------------------------------ NORMAL MODE

" insert line with <space>Enter
nnoremap <Leader><CR> o<esc>

" open window in floating

nnoremap <Leader>+ :call CreateCenteredFloatingWindow(50, 50)<CR>:terminal<CR>a

" unhighlight everything
nnoremap <Leader>x :noh<CR>

" delete buffer
nnoremap <Leader>q :Bdelete<CR>

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <Leader>[ :bprev<CR>
nnoremap <Leader>] :bnext<CR>

" ------------------------------------------------------------ EDITING

" edit location buffer
map <Leader>f :EnMasse<CR>

" ------------------------------------------------------------ COMPLETION

autocmd CursorHold * silent call CocActionAsync('highlight')

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

augroup mygroup
  autocmd!
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use `[qg` and `]qg` to navigate quickfix
nmap <silent> ]qg :cn<CR>
nmap <silent> [qg :cp<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>A  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <Leader>E  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <Leader>P  :<C-u>CocListResume<CR>

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
" " Disable the candidates in Comment syntaxes.
" call deoplete#custom#source('_',
"             \ 'disabled_syntaxes', ['Comment'])


" ------------------------------------------------------------ FILETREE


noremap <leader>\ :Defx<CR>

call defx#custom#option('_', {
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': 'defxplorer',
      \ 'columns': 'icon:indent:icons:filename',
      \ 'toggle': 1,
      \ 'resume': 1,
      \ })

call defx#custom#column('icon', {
      \ 'directory_icon': '▸',
      \ 'opened_icon': '▾',
      \ })

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction

" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25

" noremap <leader>\ :20Lexplore<CR>

" function! s:CloseIfOnlyControlWinLeft()
"   if winnr("$") != 1
"     return
"   endif
"   if (exists("t:NetrwTreeListing") && bufwinnr(t:NetrwTreeListing) != -1)
"         \ || &buftype == 'quickfix'
"     q
"   endif
" endfunction
" augroup CloseIfOnlyControlWinLeft
"   au!
"   au BufEnter * call s:CloseIfOnlyControlWinLeft()
" augroup END

" ------------------------------------------------------------ WILDMENU

" use wildmenu
set wildmenu
" tab complete commands
set wildchar=<TAB>

" ignore certain extensions in wildmenu
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*

" Complete only until point of ambiguity.
set wildmode=list:longest

" splits reduced to single line.
set winminheight=0

" ------------------------------------------------------------ STATUSLINE

set noshowmode

function! VimMode()
  let current_mode = mode()
  return current_mode == 'n' ? 'Normal' : 'Insert'
endfunction

function! LinterStatus() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?l:branchname:'⚬ '
endfunction

function! StatusSpace()
  return ' '
endfunction

function! StatusSeperator()
  return ''
endfunction

" left
set statusline=
set statusline+=%#WarningMsg#
set statusline+=%{StatusSpace()}
set statusline+=%{VimMode()}
set statusline+=%{StatusSpace()}
set statusline+=%#PmenuSel#
set statusline+=%{StatusSpace()}
set statusline+=%{StatuslineGit()}
set statusline+=%{StatusSpace()}
set statusline+=%#Constant#
set statusline+=%{StatusSpace()}
set statusline+=%f
set statusline+=%{StatusSpace()}
set statusline+=%#Constant#

" right
set statusline+=%=        " Switch to the right side
set statusline+=%#Constant#
set statusline+=%{LinterStatus()}
set statusline+=\ %y
set statusline+=%{StatusSeperator()}


" ------------------------------------------------------------ Linting/Formatting

command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

highlight link CocErrorSign ErrorMsg
highlight link CocInfoSign Comment
highlight link CocWarningSign Search


" ------------------------------------------------------------ Git

" ------------------------------------------------------------ Denite



" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)

call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

" Use ripgrep in place of "grep"

call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase

call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
let s:denite_options = {'default' : {
\ 'split': 'floating',
\ 'start_filter': 1,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': '•',
\ 'statusline': 0,
\ 'winrow': 1,
\ 'vertical_preview': 1
\ }}

" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)

nmap ; :Denite buffer<CR>
nmap ; :Denite buffer<CR>
nmap Y :Denite neoyank<CR>
nmap <leader>t :DeniteProjectDir file/rec<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
" nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>

" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction


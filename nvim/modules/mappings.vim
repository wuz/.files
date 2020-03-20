" ------------------------------------------------------------ MAPPINGS

" leader is <space>
let mapleader="\<Space>"
" local leader is \
let maplocalleader = "\\"

" insert line with <space>Enter
nnoremap <Leader><CR> o<esc>

" open window in floating
nnoremap <Leader>+ :call CreateCenteredFloatingWindow(50, 50)<CR>:terminal<CR>a

" unhighlight everything
nnoremap <Leader>x :noh<CR>

" delete buffer
nnoremap <Leader>q :Bdelete<CR>

" better movement in normal mode
nnoremap n nzzzv
nnoremap N Nzzzv


" <Space>[ for previous buffer
nnoremap <Leader>[ :bprev<CR>
" <Space>] for next buffer
nnoremap <Leader>] :bnext<CR>

" ctrl-p to open files menu in fzf
noremap <C-P> :Files<CR>
" ctrl-t to open tags menu in fzf
noremap <C-T> :Tags<CR>
" ctrl-m to open editing history menu in fzf
noremap <C-M> :History<CR>
" <Space>-b to open buffers selection menu in fzf
nmap <Leader>b :Buffers<CR>

" open up ripgrep search with <space>a
nnoremap <Leader>a :Rg<CR>

" " run ripgrep search for word under cursor
" nmap <expr> <leader>G ':Rg \b'.expand('<cword>').'\b<cr>'

" run ripgrep search for word under cursor
nnoremap <leader>F :RgWord <CR>

" edit location buffer
map <Leader>f :EnMasse<CR>

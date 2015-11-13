" General settings "
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set nu
set noswapfile
set nowb
set nobackup
set hlsearch
set laststatus=2

" filetype indent on

let mapleader=","

" Tidy XML 
nmap <leader>t :1,$!xmllint --format --recover - 2>/dev/null<CR>

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" CTRL-H move one word backward in input mode "
inoremap <C-H> <C-\><C-O>b

" CTRL-L move one word forward in input mode "
inoremap <C-L> <C-\><C-O>w

" Enable pathogen
call pathogen#infect() 

" Vim Airline configs "
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_detect_modified=1
let g:airline_detect_iminsert=1
let g:airline_theme='bubblegum'

" NERDTree configs "
let g:NERDTreeDirArrows=0

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
au BufNewFile,BufRead *.gradle setf groovy

let g:used_javascript_libs = 'underscore,angularjs,angularui'

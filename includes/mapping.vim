" Key mappings and additional behaviors
let mapleader=" "

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <SPACE> <Nop>
tnoremap <Esc> <C-\><C-n>

nnoremap <Leader>v :e C:\Users\Tanner\AppData\Local\nvim\init.vim<CR>

nnoremap <C-S> :wq<CR>
nnoremap <C-s> :w<CR>
nnoremap <silent> <Leader>q :Bdelete<CR>

nmap <tab> :bnext<CR>
nmap <s-tab> :bprevious<CR>

" Airline
nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9
nmap <Leader>0 <Plug>AirlineSelectTab0

nnoremap <F5> :UndotreeToggle<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap <c-U> <Esc>viwUi
nnoremap <c-U> viwU<Esc>

vnoremap < <gv
vnoremap > >gv

nnoremap <C-Q> :wq!<CR>

nnoremap <M-j> :resize -10<CR>
nnoremap <M-k> :resize +10<CR>
nnoremap <M-h> :vertical resize -10<CR>
nnoremap <M-l> :vertical resize +10<CR>
nnoremap <c-p> :Files<CR>
" nnoremap <C-F> :Ag<CR>
nnoremap <Leader><Leader>t :terminal cmd.exe<CR>

" Optionally copy path to a named register (* in this case) when calling :JsonPath
let g:jsonpath_register = '*'

" Define mappings for json buffers
au FileType json noremap <buffer> <silent> <leader>d :call jsonpath#echo()<CR>
au FileType json noremap <buffer> <silent> <leader>g :call jsonpath#goto()<CR>

" Git stuff
nnoremap <Leader>g :G<CR>
nnoremap <Leader>gc :G commit -m '
nnoremap <Leader>gb :G checkout 


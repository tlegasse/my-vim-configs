" Key mappings and additional behaviors
let mapleader=" "

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <SPACE> <Nop>
tnoremap <Esc> <C-\><C-n>


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


" Window controls
nnoremap <M-j> :resize -10<CR>
nnoremap <M-k> :resize +10<CR>
nnoremap <M-h> :vertical resize -10<CR>
nnoremap <M-l> :vertical resize +10<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Uppercasing words
inoremap <c-U> <Esc>viwUi
nnoremap <c-U> viwU<Esc>

" Indenting controls
vnoremap < <gv
vnoremap > >gv
nnoremap < i<c-d><esc>
nnoremap > i<c-t><esc>


" Git stuff
command! -bar -nargs=* Gpull execute 'Git pull' <q-args> 'origin' gitbranch#name()
command! -bar -nargs=* Gpush execute 'Git push' <q-args> 'origin' gitbranch#name()

nnoremap <Leader>g :G<CR>
nnoremap <Leader>gc :G commit -m '
nnoremap <Leader>gb :G checkout 
nnoremap <Leader>gp :Gpull<CR>
nnoremap <Leader>gu :Gpush<CR>
nnoremap <Leader>ga :G add .<CR>
nnoremap <Leader>gr :G reset --hard HEAD <CR>
nnoremap <Leader>gs :G stash <CR>
nnoremap <Leader>gsp :G stash pop <CR>
nnoremap <leader>gd :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>
nnoremap <Leader>gL :exe ':!cd ' . expand('%:p:h') . '; git la'


" Telescope settings
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Misc
nnoremap <leader>u :UndotreeToggle<CR>
" Optionally copy path to a named register (* in this case) when calling :JsonPath
let g:jsonpath_register = '+'
" Define mappings for json buffers
au FileType json noremap <buffer> <silent> <leader>d :call jsonpath#echo()<CR>

nnoremap <Leader>v :e ~/.config/nvim/init.vim<CR>

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

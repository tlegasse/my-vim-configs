" Key mappings and additional behaviors
let mapleader=" "

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <SPACE> <Nop>
nnoremap <Leader>e :ALEGoToDefinition
nnoremap <Leader>f :NERDTreeToggle<Enter>
tnoremap <Esc> <C-\><C-n>

nnoremap <Leader>v :e C:\Users\Tanner\AppData\Local\nvim\init.vim<CR>

nnoremap <C-s> :w<CR>
nnoremap <Leader>q :Bdelete<CR>

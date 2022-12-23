" Theme settings

"set t_Co=256

"hi Visual  guifg=#000000 guibg=#FFFF87 gui=none

set background=light
colorscheme PaperColor

if (has("termguicolors"))
  "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax enable


" transparent bg
"autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" For Vim<8, replace EndOfBuffer by NonText
"autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE

" for transparent background
"function! AdaptColorscheme()
   "highlight clear CursorLine
   "highlight Normal ctermbg=none
   "highlight LineNr ctermbg=none
   "highlight Folded ctermbg=none
   "highlight NonText ctermbg=none
   "highlight SpecialKey ctermbg=none
   "highlight VertSplit ctermbg=none
   "highlight SignColumn ctermbg=none
"endfunction
"autocmd ColorScheme * call AdaptColorscheme()

"highlight Normal guibg=NONE ctermbg=NONE
"highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight clear LineNr
"highlight clear SignColumn
"highlight clear StatusLine


" Change Color when entering Insert Mode
"autocmd InsertEnter * set nocursorline

" Revert Color to default when leaving Insert Mode
"autocmd InsertLeave * set nocursorline

"" extra settings, uncomment them if necessary :) 
"set cursorline
"set noshowmode
"set nocursorline

" trasparent end

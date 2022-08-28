" NERDTree settings
command! Xs :tabdo NERDTreeClose | :mks! | :xa "save the session, save modified files, and exit


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

let NERDTreeShowHidden=1

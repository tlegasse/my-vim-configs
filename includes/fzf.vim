let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.5, 'yoffset': 1, 'border': 'horizontal' } }

let $FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

" let $FZF_DEFAULT_COMMAND='rg -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'bat --color=always --style=numbers --line-range=:500 {}']}, <bang>0)

command! -bang -nargs=* Ag
\ call fzf#vim#ag(<q-args>,
\                 <bang>0 ? fzf#vim#with_preview('up:60%')
\                         : fzf#vim#with_preview('right:50%:hidden', '?'),
\                 <bang>0)


let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

"nnoremap - :Lexplore %:p:h<CR>
nnoremap <leader>n :Lexplore %:p:h<CR>
nnoremap <Leader>nc :Lexplore<CR>


let g:netrw_banner = 0
let g:netrw_winsize = 15
let g:netrw_localcopydircmd = 'cp -r'
let g:netrw_localcopycmd = 'cp'
"let g:netrw_liststyle=1
let g:netrw_localrmdir='rm -r'


function! NetrwMapping()
    nmap <buffer> H u
    nmap <buffer> h -^
    nmap <buffer> l <CR>

    nmap <buffer> . gh
    nmap <buffer> P <C-w>z

    nmap <buffer> L <CR>:Lexplore<CR>
    nmap <buffer> <leader>n ZZ
    "nmap <buffer> - ZZ
    "nmap <buffer> <C-l> <C-w>l

    nmap <buffer> <TAB> mf
    nmap <buffer> <S-TAB> mF
    nmap <buffer> <Leader><TAB> mu

    nmap <buffer> fl :echo join(netrw#Expose("netrwmarkfilelist"), "\n")<CR>

    nmap <buffer> FF :call NetrwRemoveRecursive()<CR>
endfunction

function! NetrwRemoveRecursive()
  if &filetype ==# 'netrw'
    cnoremap <buffer> <CR> rm -r<CR>
    normal mu
    normal mf
    
    try
      normal mx
    catch
      echo "Canceled"
    endtry

    cunmap <buffer> <CR>
  endif
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

command! Ex :call Netrw()
function! Netrw()
   Explore
   set number
endfunction

function! s:rmdir()
  let b = &ft ==? 'dirvish' ? getline('.') : fnamemodify(bufname(''),':p').getline('.')
  if input('delete '.b.' ? (y/n)') ==# 'y'
    if !delete(b,'rf')
      let a = getpos('.')
      if &ft ==? 'dirvish'
        e
        call setpos('.',a)
      elseif &ft ==? 'netrw'
        if search('^\.\/$','Wb')
          exe "norm \<cr>"
          call setpos('.',a)
        endif
      endif
    endif
  endif
endfunction
command! Rmnetrw call <SID>rmdir()



let uname = substitute(system('uname'),'\n','','')
if uname == 'Linux'
    if system('$PATH')=~ '/mnt/c/WINDOWS'
        " We are in Windows Subsystem
        endiflet g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }
    endif
endif

set signcolumn=yes


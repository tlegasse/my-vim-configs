let uname = substitute(system('uname'),'\n','','')

if uname == 'Linux' && filereadable("/proc/version")
    let lines = readfile("/proc/version")
    if lines[0] =~ "microsoft"
        " We are in Windows Subsystem

        let g:clipboard = {
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


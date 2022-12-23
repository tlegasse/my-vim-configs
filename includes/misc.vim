let uname = substitute(system('uname'),'\n','','')

let g:is_wsl = 0
if uname == 'Linux' && filereadable("/proc/version")
    let lines = readfile("/proc/version")
    if lines[0] =~ "microsoft"
        " We are in Windows Subsystem
        let g:is_wsl = 1
    endif
endif


lua require("harpoon.init").setup({mark_branch = true})

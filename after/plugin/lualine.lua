require('lualine').setup {
    options = {
        theme = 'dracula',
        icons_enabled = true,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_b = {
            {
                'buffers',
            }
        },
        lualine_z = {}
    }
}

require('lualine').setup {
    options = {
        theme = 'dracula-nvim',
        icons_enabled = true,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = {
            {
                'buffers',
                filetype_names = {
                    TelescopePrompt = 'Telescope',
                    dashboard = 'Dashboard',
                    packer = 'Packer',
                    fzf = 'FZF',
                    alpha = 'Alpha'
                },
                symbols = {
                    modified = ' ●',   -- Text to show when the buffer is modified
                    alternate_file = '', -- Text to show to identify the alternate file
                    directory = '',   -- Text to show when the buffer is a directory
                },
            }
        },
        lualine_b = {
        },
        lualine_c = {
        },
        lualine_z = {
            'branch'
        }
    },
}

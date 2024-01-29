require('lualine').setup {
    options = {
        theme = 'catppuccin',
        icons_enabled = false,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
    tabline = {
        lualine_a = {
        },
        lualine_b = {
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
        lualine_c = {
        },
        lualine_x = {
        },
        lualine_y = {
            "progress",
            "location",
        },
        lualine_z = {
            'mode'
        }
    },
}

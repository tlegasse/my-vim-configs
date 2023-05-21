require('dracula').setup({
    -- theme_style = "light" --
})

function ColorMyPencils(color)
	color = color or "shine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


    -- Function to set comments italic
    local function set_comments_italic()
      local comment_fg = vim.api.nvim_get_hl_by_name('Comment', true).foreground
      local comment_bg = vim.api.nvim_get_hl_by_name('Comment', true).background
      local comment_style = 'italic'

      -- Set Comment highlight group with italic style and theme colors
      vim.api.nvim_command(string.format(
        'highlight Comment gui=%s guifg=#%06x guibg=%s',
        comment_style,
        comment_fg,
        comment_bg and string.format('#%06x', comment_bg) or 'NONE'
      ))
    end

    -- Call the function to set comments italic
    set_comments_italic()

    -- Automatically update comments style when the colorscheme is changed
    vim.cmd([[
      augroup UpdateCommentsItalic
        autocmd!
        autocmd ColorScheme * lua set_comments_italic()
      augroup END
    ]])
end

ColorMyPencils()


require("nvim-surround").setup {
    keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal_cur = "<leader>ss",
        normal_cur_line = "<leader>SS",
        visual = "<leader>s",
        visual_line = "<leader>S",
        delete = "ds",
        change = "cs",
        change_line = "cS",
    }
}

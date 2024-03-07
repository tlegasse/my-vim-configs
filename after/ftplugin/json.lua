-- send json path to clipboard
vim.keymap.set("n", "<leader>j", function()
  vim.fn.setreg("+", require("jsonpath").get())
end, { desc = "copy json path", buffer = true })

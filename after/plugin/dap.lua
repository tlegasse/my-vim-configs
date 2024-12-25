require("mason").setup()
require("mason-nvim-dap").setup()

local dap, dapui =require("dap"),require("dapui")
dap.listeners.after.event_initialized["dapui_config"]=function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"]=function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"]=function()
  dapui.close()
end

vim.keymap.set('n', '<Leader>dc', require 'dap'.continue)
vim.keymap.set('n', '<Leader>dn', require 'dap'.step_over)
vim.keymap.set('n', '<Leader>di', require 'dap'.step_into)
vim.keymap.set('n', '<Leader>do', require 'dap'.step_out)
vim.keymap.set('n', '<leader>db', require 'dap'.toggle_breakpoint)

-- require("dap-python").setup("python3")

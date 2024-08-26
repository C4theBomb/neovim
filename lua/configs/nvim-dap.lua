local dap, dapui = require("dap"), require("dapui")

dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end

local set = vim.keymap.set

set('n', '<leader>db', function() dap.toggle_breakpoint() end, { desc = 'Debug Toggle breakpoint' });
set('n', '<leader>dc', function() dap.continue() end, { desc = 'Debug Continue' });
set('n', '<leader>do', function() dap.step_over() end, { desc = 'Debug Step over' });
set('n', '<leader>di', function() dap.step_out() end, { desc = 'Debug Step into' });
set('n', '<leader>dr', function() dap.repl.open() end, { desc = 'Debug Toggle repl' });

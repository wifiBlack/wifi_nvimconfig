-- 加载 nvim-dap 和 nvim-dap-python 插件
local dap = require('dap')
local dap_python = require('dap-python')

-- 设置 Python 调试器路径（修改为你系统上的路径）
dap_python.setup('~/anaconda3/envs/openmmlab/bin/python')

-- 设置断点样式
vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='➡️', texthl='', linehl='', numhl=''})

require('dapui').setup()
-- 调试会话打开时自动打开 dapui
dap.listeners.after.event_initialized["dapui_config"] = function()
  require('dapui').open()
end

-- 调试会话结束时自动关闭 dapui
dap.listeners.before.event_terminated["dapui_config"] = function()
  require('dapui').close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  require('dapui').close()
end

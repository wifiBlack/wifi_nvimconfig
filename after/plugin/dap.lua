
-- 加载 nvim-dap 和 nvim-dap-python 插件
local dap = require('dap')
local dap_python = require('dap-python')

-- 设置 Python 调试器路径（修改为你系统上的路径）
dap_python.setup('~/anaconda3/envs/openmmlab/bin/python')
dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = 'Launch file',
    program = '${file}', -- 当前文件
    pythonPath = '~/anaconda3/envs/openmmlab/bin/python',
  },
}

-- 设置断点样式
vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='➡️', texthl='', linehl='', numhl=''})

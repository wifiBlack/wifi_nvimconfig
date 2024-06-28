-- 设置 <leader> 键
vim.g.mapleader = " "

-- 快捷键映射的简化函数
local keymap = vim.keymap

------------------ 插入模式 ------------------
-- jk 快捷键退出插入模式
keymap.set("i", "jk", "<ESC>")

------------------ 视觉模式 ------------------
-- 上下移动选中的文本块
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

------------------ 正常模式 ------------------
-- 分割窗口
keymap.set("n", "<leader>sv", "<C-w>s", { desc = "垂直方向增加一个窗口" })
keymap.set("n", "<leader>sh", "<C-w>v", { desc = "水平方向增加一个窗口" })

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "取消高亮" })

-- 全选文本
keymap.set("n", "<leader>aa", "ggVG", { desc = "全选文本" })

-- 剪切板复制和粘贴
keymap.set("v", "<leader>yy", '"+y', { desc = "复制到系统剪切板" })
keymap.set("n", "<leader>yy", '"+y', { desc = "复制到系统剪切板" })
keymap.set("n", "<leader>p", '"+p', { desc = "从系统剪切板粘贴" })

------------------ Floaterm 键位配置 ------------------
-- 设置键位映射的函数
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Floaterm 键位配置
map('n', '<leader>te', ':FloatermNew<CR>', { desc = 'New Floaterm' })
map('n', '<leader>tt', ':FloatermToggle<CR>', { desc = 'Toggle Floaterm' })
map('n', '<leader>nt', ':FloatermNext<CR>', { desc = 'Next Floaterm' })
map('n', '<leader>pt', ':FloatermPrev<CR>', { desc = 'Pevious Floaterm' })
map('t', '<Esc>', '<C-\\><C-n>:q<CR>', { desc = 'Exit Floaterm' })


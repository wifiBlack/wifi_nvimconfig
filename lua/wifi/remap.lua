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


-- 切换到终端1
vim.api.nvim_set_keymap('n', '<leader>t1', ':ToggleTerm 1<CR>', {noremap = true, silent = true})
-- 切换到终端2
vim.api.nvim_set_keymap('n', '<leader>t2', ':ToggleTerm 2<CR>', {noremap = true, silent = true})
-- 切换到终端3
vim.api.nvim_set_keymap('n', '<leader>t3', ':ToggleTerm 3<CR>', {noremap = true, silent = true})

-- 水平分割打开终端1
vim.api.nvim_set_keymap('n', '<leader>th1', ':ToggleTerm 1 direction=horizontal<CR>', {noremap = true, silent = true})
-- 垂直分割打开终端2
vim.api.nvim_set_keymap('n', '<leader>tv2', ':ToggleTerm 2 direction=vertical<CR>', {noremap = true, silent = true})
-- 浮动窗口打开终端3
vim.api.nvim_set_keymap('n', '<leader>tf3', ':ToggleTerm 3 direction=float<CR>', {noremap = true, silent = true})


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

keymap.set("n", "<leader>das", vim.cmd.Dashboard, { desc = "打开 Dashboard" })

-- 切换到终端1
vim.api.nvim_set_keymap("n", "<leader>t1", ":ToggleTerm 1<CR>", { noremap = true, silent = true })
-- 切换到终端2
vim.api.nvim_set_keymap("n", "<leader>t2", ":ToggleTerm 2<CR>", { noremap = true, silent = true })
-- 切换到终端3
vim.api.nvim_set_keymap("n", "<leader>t3", ":ToggleTerm 3<CR>", { noremap = true, silent = true })

-- 水平分割打开终端1
vim.api.nvim_set_keymap("n", "<leader>th1", ":ToggleTerm 1 direction=horizontal<CR>", { noremap = true, silent = true })
-- 垂直分割打开终端2
vim.api.nvim_set_keymap("n", "<leader>tv2", ":ToggleTerm 2 direction=vertical<CR>", { noremap = true, silent = true })
-- 浮动窗口打开终端3
vim.api.nvim_set_keymap("n", "<leader>tf3", ":ToggleTerm 3 direction=float<CR>", { noremap = true, silent = true })

-- 调试控制快捷键

-- 调试控制快捷键，加入 CTRL 组合键
vim.api.nvim_set_keymap("n", "<leader>db", ':lua require"dap".continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>nn", ':lua require"dap".step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-F11>", ':lua require"dap".step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-F12>", ':lua require"dap".step_out()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<Leader>b",
	':lua require"dap".toggle_breakpoint()<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>B",
	':lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>lp",
	':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Leader>dr", ':lua require"dap".repl.open()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>dl", ':lua require"dap".run_last()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<C-Tab>", "codeium#Accept()", { noremap = true, expr = true, silent = true })

-- 跳转到函数定义
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- 查看函数定义信息（浮动窗口）
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })

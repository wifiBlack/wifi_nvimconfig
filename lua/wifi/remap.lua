vim.g.mapleader = " "

local keymap = vim.keymap

------------------插入模式----------------- 
keymap.set("i", "jk", "<ESC>")

------------------视觉模式-----------------
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

------------------正常模式-----------------
keymap.set("n", "<leader>sv", "<C-w>s") --垂直方向增加一个窗口
keymap.set("n", "<leader>sh", "<C-w>v") --水平方向增加一个窗口
keymap.set("n", "<leader>nh", ":nohl<CR>") --取消高亮
keymap.set("n", "<leader>tr", vim.cmd.Ex) --设置进入文件树命令为

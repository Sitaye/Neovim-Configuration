vim.g.mapleader = " "
local keymap = vim.keymap

-- 打开文档树
keymap.set("n", "<leader>e", ":Neotree<CR>")

-- 切换标签栏
keymap.set("n", "<C-[>", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<C-]>", ":BufferLineCycleNext<CR>")
keymap.set("n", "<C-H>", ":BufferLineMovePrev<CR>")
keymap.set("n", "<C-L>", ":BufferLineMoveNext<CR>")
-- 关闭当前标签页
keymap.set("n", "<leader>x", ":Bd<CR>")


-- 调试 Python
keymap.set("n", "<C-B>", ":w<CR>:belowright 10split term://python3 %<CR>")
keymap.set("n", "<F5>", ":w<CR>:term python3 %<CR>")

vim.cmd('autocmd TermOpen * startinsert')

-- 快速修改变量名
keymap.set("n", "<leader>r", "cgn")


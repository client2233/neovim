--相对行号
vim.opt.number = true
vim.opt.relativenumber = true
--编码utf-8
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
--滚动边距
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
--搜索不要高亮
vim.opt.hlsearch = true
--边输入边搜索
vim.opt.incsearch = true
--鼠标支持
vim.opt.mouse = "a"
vim.opt.clipboard:append("unnamedplus")
--tab步长4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
--高亮所在行
vim.wo.cursorline = true
--显示左侧图标指示列
vim.wo.signcolumn = "yes"
--大小写不敏感，除非出现大写
vim.opt.ignorecase = true
vim.opt.smartcase = true
--当文件被外部程序修改时，自动加载
vim.opt.autoread = true
vim.bo.autoread = true

vim.wo.signcolumn = 'no'
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = "space:·"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

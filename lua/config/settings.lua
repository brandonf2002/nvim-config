vim.g.mapleader = " "
vim.g.python_highlight_space_errors = 0

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.hidden = true
vim.opt.mouse='a'
vim.opt.ruler = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.cmdheight=2
-- vim.opt.nowrap = true
vim.opt.smarttab = true
vim.opt.showtabline=2
vim.opt.clipboard='unnamedplus'
-- vim.opt.nobackup = true
-- vim.opt.nowritebackup = true
vim.opt.conceallevel = 0
vim.opt.showtabline = 2
vim.opt.updatetime = 300
vim.opt.pumheight = 10
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.cursorline = true

vim.cmd('syntax enable')
vim.cmd('autocmd BufEnter *.asm setfiletype nasm')

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.cmd('set expandtab')

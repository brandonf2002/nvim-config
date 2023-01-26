-- Use alt + hjkl to resize windows
vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +2<CR>', { noremap = true })

-- TAB/Shift-TAB in noraml mode will move to next/previous buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true })

-- Better window navigation
-- vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Search for word object under the cursor
-- vim.api.nvim_set_keymap('n', '<leader>*', ':%s/<c-r><c-w>//g<left><left>', { noremap = true })

-- Remap leader h to unhighlight text
vim.api.nvim_set_keymap('n', '<leader>h', ':noh<CR>', { noremap = true, silent = true })

-- Shortcuts to create splits and vertical splits
vim.api.nvim_set_keymap('n', '<leader>x', ':split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>nx', ':split<CR>:enew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>nv', ':vsplit<CR>:enew<CR>', { noremap = true, silent = true })

-- Tab shortcuts
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew<CR>', { noremap = true, silent = true })

-- Search and replace current word
-- vim.api.nvim_set_keymap('n', '<leader>s', '\"5yiw:%s/<C-r>5//g<left><left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>*', ':%s/<c-r><c-w>//g<left><left>', { noremap = true })

-- Better tab navigation
vim.api.nvim_set_keymap('n', '<leader>1', '1gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>2', '2gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>3', '3gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>4', '4gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>5', '5gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>6', '6gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>7', '7gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>8', '8gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>9', '9gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>0', '0gt', { noremap = true, silent = true })

-- Surround visual selection with DEBUG ifdef
vim.api.nvim_set_keymap('v', 'gd', 'c#ifdef DEBUG<esc>o#endif<esc>P', { noremap = true, silent = true })

-- Just to add a semi colon at the end and go back to the same place
vim.api.nvim_set_keymap('n', '<leader>;', 'msA;<ESC>`s', { noremap = true, silent = true })

-- Centre the screen when searching forward and backwards
vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'N', 'Nzz', { noremap = true, silent = true })

-- jk and kj to leave insert mode
vim.api.nvim_set_keymap('i', 'jk', '<esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<esc>', { noremap = true, silent = true })

-- Add comments
vim.api.nvim_set_keymap('n', '<leader>cf', 'O/**<CR><CR><esc>a/<up> @brief ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cs', 'O/**<CR><CR><esc>a/<up> ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cm', 'A /*!<  */<left><left><left>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ii', 'i#pragma once<CR><CR>#include <stdint.h><CR>#include <stdbool.h><CR><CR>#include "esp_err.h"<CR>#include "esp_log.h"<esc>', { noremap = true, silent = true })

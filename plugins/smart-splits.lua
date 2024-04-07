MiniDeps.add('mrjones2014/smart-splits.nvim')
require('smart-splits').setup()

nmap('<A-h>', require('smart-splits').resize_left, "Resize left")
nmap('<A-j>', require('smart-splits').resize_down, "Resize down")
nmap('<A-k>', require('smart-splits').resize_up, "Resize up")
nmap('<A-l>', require('smart-splits').resize_right, "Resize right")

-- moving between splits
nmap('<C-h>', require('smart-splits').move_cursor_left, "Move to left")
nmap('<C-j>', require('smart-splits').move_cursor_down, "Move to down")
nmap('<C-k>', require('smart-splits').move_cursor_up, "Move to up")
nmap('<C-l>', require('smart-splits').move_cursor_right, "Move to right")
nmap('<C-\\>', require('smart-splits').move_cursor_previous, "Previous split")

-- swapping buffers between windows
nmap('<leader><leader>h', require('smart-splits').swap_buf_left, "Swap left")
nmap('<leader><leader>j', require('smart-splits').swap_buf_down, "Swap down")
nmap('<leader><leader>k', require('smart-splits').swap_buf_up, "Swap up")
nmap('<leader><leader>l', require('smart-splits').swap_buf_right, "Swap right")

vim.cmd([[
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
]])

vim.cmd([[
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]])


vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>')

-- spawn a terminal silently on startup
vim.cmd("FloatermNew --wintype=normal --height=0.3 --width=1.0 --name=term --silent")
-- vim.keymap.set("n", "<leader>tt", ":FloatermNew --wintype=normal --height=0.9 --width=0.9 --name=term<CR>")
vim.keymap.set("n", "<leader>tt", ":FloatermToggle<CR>")
vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<CR>")
vim.keymap.set("n", "<C-t>", ":FloatermToggle<CR>")

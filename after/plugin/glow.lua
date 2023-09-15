require("glow").setup({
    glow_path = "/usr/local/bin/glow",
    width = 120,
    height = 140,
    width_ratio = 0.9,
})


vim.keymap.set("n", "<leader>pp", ":Glow<CR>")


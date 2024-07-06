-- 一文字削除はレジスタに入れない
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "X", '"_X')
vim.keymap.set("n", "s", '"_s')

-- ESC2回で検索を抜ける
vim.keymap.set("n", "<ESC><ESC>", ":nohl<CR>")

-- ウィンドウ間の移動
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

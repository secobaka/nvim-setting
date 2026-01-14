local opt = vim.opt

-- 文字コード
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- 24bitカラー
opt.termguicolors = true

-- 行設定
opt.number = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.wrap = false

-- 検索
opt.ignorecase = true
opt.smartcase = true

-- 置換
opt.inccommand = "split"

-- クリップボード
opt.clipboard = "unnamedplus"

-- ヘルプの言語
opt.helplang = "ja"

-- マウス操作有効化
opt.mouse = "a"

-- タブ, インデント
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true

-- ヒストリの上限
opt.history = 512

-- ステータスライン
opt.laststatus = 3

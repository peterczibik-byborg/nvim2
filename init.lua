print"advent of neovim"

vim.keymap.set("n", "<space>xx", "<cmd>source %<cr>")
vim.keymap.set("n", "<space>x", ":.lua<cr>")
vim.keymap.set("v", "<space>x", ":lua<cr>")

vim.opt.showmatch = true -- Highlight matching pair
vim.opt.listchars = "tab:▸ ,eol:¬,extends:❯,precedes:❮,space:·"
vim.opt.list = true
vim.opt.showbreak = "↪"
vim.opt.visualbell = true -- No noise just flash

-- Let's annoy everyone with my random numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.clipboard = 'unnamedplus'

-- Visual tweaks
vim.opt.cursorcolumn = true -- Highlight the coloumn of the cursor
vim.opt.textwidth = 120

local indent_width = 2
-- Real programmers don't use TABs but spaces
vim.opt.shiftwidth = indent_width
vim.opt.tabstop = indent_width
vim.opt.softtabstop = indent_width
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search tweaks
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true -- Set /g flag regex search

vim.opt.background = "dark"

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight yanked test',
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function ()
        vim.highlight.on_yank()
    end
})

require"config.lazy"


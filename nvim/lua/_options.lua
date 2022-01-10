vim.g.mapleader = " "

vim.g.border_style = "rounded"
vim.g.markdown_fenced_languages = {
    "bash=sh",
}

vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
-- vim.o.backspace = {"indent", "eol", "start"}
vim.o.scrolloff = 8
vim.o.cmdheight = 2

vim.o.number = true
vim.o.relativenumber = true
vim.o.hidden = true
vim.o.colorcolumn = "80"
vim.o.signcolumn = "yes"
vim.o.title = true
vim.opt.titlestring = "%<%F - nvim"
vim.o.wrap = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.showcmd = true
vim.o.history = 1000
vim.o.swapfile = false
vim.o.mouse = "a"
vim.o.ttimeoutlen = 50
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.termguicolors = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.spelllang = "en"
vim.o.fileencoding = "utf-8"
vim.g.highlightedyank_highlight_duration = 200

-- vim.o.undodir = vim.fn.stdpath("cache") .. "/undo"
HOME = os.getenv("HOME")
if vim.fn.isdirectory(HOME .. "/.vim") then
  os.execute('mkdir(' .. HOME .. '/.vim0770)')
elseif not vim.fn.isdirectory(HOME .. "/.vim/undo-dir") then
  os.execute('mkdir(' .. HOME .. '/.vim/undo-dir0700)')
end

vim.o.undodir = "~/.vim/undo-dir"
vim.o.undofile = true
vim.o.undolevels = 1000

-- Remap
vim.api.nvim_set_keymap(
    "n",
    "<leader>h",
    ":wincmd h<CR>",
    {noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>j",
    ":wincmd j<CR>",
    {noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>k",
    ":wincmd k<CR>",
    {noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>l",
    ":wincmd l<CR>",
    {noremap = true}
)

-- Arrows can't be used anymore
vim.api.nvim_set_keymap(
    "n",
    "<up>",
    "<nop>",
    {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<down>",
    "<nop>",
    {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<left>",
    "<nop>",
    {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<right>",
    "<nop>",
    {noremap = true, silent = true}
)

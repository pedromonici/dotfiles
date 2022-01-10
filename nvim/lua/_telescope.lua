require("telescope").setup({
    defaults = {
        border = true,
        layout_strategy = "bottom_pane",
        layout_config = {
            height = 0.30,
            width = 1.00,
        },
        -- path_display = { "shorten" },
        sorting_strategy = "ascending",
    },
})

require("trouble").setup({
  icons=false
})

vim.api.nvim_set_keymap(
    "n",
    "<leader>ff",
    ":Telescope find_files<cr>",
    {noremap = true}
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>fg",
    ":Telescope live_grep<cr>",
    {noremap = true}
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>fb",
    ":Telescope buffers<cr>",
    {noremap = true}
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>fh",
    ":Telescope help_tags<cr>",
    {noremap = true}
)

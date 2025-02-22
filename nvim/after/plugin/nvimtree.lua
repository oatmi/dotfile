vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        float = {
            enable = true,
        }
    },
    renderer = {
        group_empty = false,
        indent_width = 2,
        highlight_opened_files = "all",
        indent_markers = {
            enable = true,
            inline_arrows = true,
        },
        icons = {
            show = {
            --     file = false,
            --     folder = false,
            --     folder_arrow = true,
                git = false,
            },
            -- glyphs = {
            --     folder = {
            --         arrow_closed = "⏵",
            --         arrow_open = "⏷",
            --     },
            --     git = {
            --         unstaged = "✗",
            --         staged = "✓",
            --         unmerged = "⌥",
            --         renamed = "➜",
            --         untracked = "★",
            --         deleted = "⊖",
            --         ignored = "◌",
            --     },
            -- },
        },
    },
    update_focused_file = {
        enable = true,
    },
    filters = {
        dotfiles = false,
    },
})

vim.keymap.set("n", "<leader><tab>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>c", vim.cmd.NvimTreeFindFile)

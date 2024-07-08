-- Set <leader> = [space]
vim.g.mapleader = " "

-- Opens directory listing when pressing " pv" in normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope Fuzzy Finder Keybinds
local builtin = require("telescope.builtin")
-- File Name Open Search
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
-- Same thing but only git files
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
-- Search all files for string
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("i","jk","<ESC>", {desc = "Exit insert mode with jk"})


--Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--Oil mappings
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })


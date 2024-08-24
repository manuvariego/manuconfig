vim.keymap.set("i","jk","<ESC>", {desc = "Exit insert mode with jk"})


--Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live grep "})
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find in buffer"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Help tags"})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "Grep string under cursor"})

--Oil mappings
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

--Harpoon mappings
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add to harpoon list"})

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Select harpoon 1"})
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = "Select harpoon 2"})
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = "Select harpoon 3"})
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, { desc = "Select harpoon 4"})

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

--Neo-tree mappings
vim.keymap.set("n", "<leader>e",':Neotree toggle<CR>')

--Persistence mappings
-- load the session for the current directory
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end, { desc = "Load the session for the current directory" })

-- select a session to load
vim.keymap.set("n", "<leader>qS", function() require("persistence").select() end, { desc = "Select a session to load" })

-- load the last session
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end, { desc = "Load the last session" })

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end, { desc = "Stop persistence, session wont be saved on exit" })

--Curl nvim mappings
local curl = require("curl")
vim.keymap.set("n", "<leader>cc", function() curl.open_curl_tab()
end, { desc = "Open a curl tab scoped to the current working directory" })

vim.keymap.set("n", "<leader>csc", function() curl.create_scoped_collection()
end, { desc = "Create or open a collection with a name from user input" })

vim.keymap.set("n", "<leader>fsc", function() curl.pick_scoped_collection()
end, { desc = "Choose a scoped collection and open it" })

local keymap = vim.keymap.set
local opts = {noremap=true, silent=true}

-- Telescope keybindings
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

--undotree
keymap("n","<leader>u", "<cmd>UndotreeToggle<CR>", opts)

--fugitive
keymap("n", "<leader>gs",vim.cmd.Git)

--back
keymap("n", "<leader>pv", vim.cmd.Ex)

--move when highlighted
keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("v", "J", ":m '>+1<CR>gv=gv")

-- persist the selected and pasted values
keymap("x", "<leader>p", "\"_dP")

keymap("i", "<C-c>", "<Esc")

--find in directory
keymap("n", "Q", "<nop>")

--select all current same words
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left>]], opts)

--auto completions
keymap("i", "<C-Space>", "<C-x><C-o>", opts)

--lsp 
keymap("n", "K", vim.lsp.buf.hover, {desc = "LSP Hover"})
keymap("n", "gd", vim.lsp.buf.definition, {desc="Go to Definition"})
keymap("n", "gr", vim.lsp.buf.references, {desc="Go to References"})
keymap("n", "<leader>n", vim.lsp.buf.rename, {desc="Rename"})

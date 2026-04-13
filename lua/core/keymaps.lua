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

--diagnostic
keymap("n", "[d", vim.diagnostic.goto_prev, {desc = "Previous diagnostic"})
keymap("n", "]d", vim.diagnostic.goto_next, {desc = "Next diagnostic"})
keymap("n", "<leader>de", vim.diagnostic.open_float, {desc = "Show diagnostic"})
keymap("n", "<leader>dq", vim.diagnostic.setloclist, {desc = "Diagnostics to loclist"})
keymap("n", "<leader>ca", vim.lsp.buf.code_action, {desc = "Code actions"})

--nvim-tree
keymap("n","<leader>e", ":NvimTreeToggle<CR>", opts)

--switch between tree and file 
keymap("n", '<C-Left>', '<C-w><Left>', opts)
keymap("n", '<C-Right>', '<C-w><Right>', opts)


--terminal
-- exit terminal mode without closing the terminal
keymap('t', '<Esc>', '<C-\\><C-n>', opts)

--toggle terminal
keymap("n", "<leader>tt", ":ToggleTerm<CR>", opts)
keymap("t", "<leader>t", "<cmd>ToggleTerm<CR>", opts)  -- also works in terminal mode
keymap("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", opts)
keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", opts)
keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", opts)
keymap("n", "<leader>tg", "<cmd>ToggleTerm direction=float size=60 cmd=lazygit<CR>", opts) -- gitui

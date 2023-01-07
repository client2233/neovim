vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>q","<Cmd>q<CR>")
keymap.set("n", "<leader>w","<Cmd>w<CR>")

keymap.set("n", "<C-a>","gg<S-v>G")

keymap.set("n", "<leader>ss",":vsplit<Return><C-w>w",{silent = true})

keymap.set("n", "f","<C-w>w")
keymap.set("n", "<leader>sh","<C-w>h")
keymap.set("n", "<leader>sj","<C-w>j")
keymap.set("n", "<leader>sk","<C-w>k")
keymap.set("n", "<leader>sl","<C-w>l")

keymap.set("n", "<leader>s<left>","<C-w><")
keymap.set("n", "<leader>s<right>","<C-w>>")
keymap.set("n", "<leader>s<up>","<C-w>+")
keymap.set("n", "<leader>s<down>","<C-w>-")
keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "<leader>a", "<Cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>l", "<Cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<leader>da", "<Cmd>BufferLineCloseLeft<CR>")
keymap.set("n", "<leader>dl", "<Cmd>BufferLineCloseRight<CR>")
-- DAP
keymap.set({"n"}, "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true, noremap = true})
keymap.set({"n"}, "<F10>", "<cmd>lua require'dap'.continue()<CR>", {silent = true, noremap = true})
keymap.set({"n"}, "<F11>", "<cmd>lua require'dap'.step_into()<CR>", {silent = true, noremap = true})
keymap.set({"n"}, "<F12>", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true})

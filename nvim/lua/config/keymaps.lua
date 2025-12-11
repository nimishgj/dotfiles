-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jj", "<Esc>")

-- Git Keymaps
vim.keymap.set("n", "<leader>gr", function()
  require("gitsigns").reset_hunk()
end, { desc = "reset hunk" })

vim.keymap.set("n", "<leader>gs", function()
  require("gitsigns").stage_hunk()
end, { desc = "stage hunk" })


vim.keymap.set("n", "<C-a>", "gg<S-v>G")

---tab
vim.keymap.set("n", "te", ":tabedit")
-- Split window
vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")

-- Resize window
vim.keymap.set("n", "<C-w><left>", "<C-w><")
vim.keymap.set("n", "<C-w><right>", "<C-w>>")
vim.keymap.set("n", "<C-w><up>", "<C-w>+")
vim.keymap.set("n", "<C-w><down>", "<C-w>-")

--buffer switch
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", opts)

-- terminal
vim.keymap.set("n", "<leader>tt", ":botright split | terminal<CR>", { desc = "Bottom Terminal" })


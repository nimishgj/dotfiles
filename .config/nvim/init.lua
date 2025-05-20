-- Packer plugin manager
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- fzf-lua (fzf integration)
  use { 'ibhagwan/fzf-lua', requires = { 'nvim-tree/nvim-web-devicons' } }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' }
    }
  }

  -- Harpoon
  use 'ThePrimeagen/harpoon'

  -- colorscheme
  use 'rafi/awesome-vim-colorschemes'

  use 'ThePrimeagen/vim-be-good'
end)

--colorscheme
vim.cmd('colorscheme 256_noir')

-- Treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "python", "javascript", "html", "css", "bash" },
  highlight = { enable = true },
}

-- Keymaps for fzf-lua
vim.keymap.set('n', '<leader>f', "<cmd>lua require('fzf-lua').files()<CR>")
vim.keymap.set('n', '<leader>b', "<cmd>lua require('fzf-lua').buffers()<CR>")
vim.keymap.set('n', '<leader>r', "<cmd>lua require('fzf-lua').grep()<CR>")

-- Telescope keymaps
vim.keymap.set('n', '<leader>tf', "<cmd>Telescope find_files<CR>")
vim.keymap.set('n', '<leader>tg', "<cmd>Telescope live_grep<CR>")
vim.keymap.set('n', '<leader>tb', "<cmd>Telescope buffers<CR>")
vim.keymap.set('n', '<leader>th', "<cmd>Telescope help_tags<CR>")

-- Harpoon setup
require("harpoon").setup({
  -- Optional configuration settings
})

vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end)
vim.keymap.set("n", "<leader>m", function() require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set("n", "<leader>1", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() require("harpoon.ui").nav_file(4) end)

-- Optional UI settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

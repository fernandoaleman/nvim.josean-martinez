return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- change color for arrows in tree to light blue
    vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
    vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])
    vim.cmd([[ highlight NvimTreeGitDirty guifg=#ffd93f ]])   -- unstaged   (yellow)
    vim.cmd([[ highlight NvimTreeGitStaged guifg=#3fff79 ]])  -- staged     (green)
    vim.cmd([[ highlight NvimTreeGitMerge guifg=#ffd93f ]])   -- unmerged   (yellow)
    vim.cmd([[ highlight NvimTreeGitRenamed guifg=#ffd93f ]]) -- renamed    (yellow)
    vim.cmd([[ highlight NvimTreeGitNew guifg=#ff3f65 ]])     -- untracked  (red)
    vim.cmd([[ highlight NvimTreeGitDeleted guifg=#ff3f65 ]]) -- deleted    (red)
    vim.cmd([[ highlight NvimTreeGitIgnored guifg=#ffd93f ]]) -- ignored    (yellow)

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = false,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
            git = {
              unstaged = "",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "",
              deleted = "✕",
              ignored = "◌",
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
  end
}

vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader><leader>", "<C-^>", { desc = "Toggle between the last two files" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tb", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- visual
keymap.set("v", "<", "<gv", { desc = "Stay in right indentation mode" }) -- right indentation
keymap.set("v", ">", ">gv", { desc = "Stay in left indentation mode" }) -- left indentation

-- terraform
keymap.set("n", "<leader>ti", "<cmd>!terraform init<CR><CR>", { desc = "terraform init" }) -- terraform init
keymap.set("n", "<leader>tf", "<cmd>!terraform fmt<CR><CR>", { desc = "terraform format" }) -- terraform format 
keymap.set("n", "<leader>tv", "<cmd>!terraform validate<CR><CR>", { desc = "terraform validate" }) -- terraform validate
keymap.set("n", "<leader>tp", "<cmd>!terraform plan<CR><CR>", { desc = "terraform plan" }) -- terraform plan
keymap.set("n", "<leader>ta", "<cmd>!terraform apply<CR><CR>", { desc = "terraform apply" }) -- terraform apply

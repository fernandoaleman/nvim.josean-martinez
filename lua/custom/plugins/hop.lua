return {
  "phaazon/hop.nvim",
  lazy = false,
  config = function()
    require("hop").setup({ keys = "etovxqpdygfblzhckisuran", term_seq_bias = 0.5 })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    -- Changing the default f keyword
    keymap.set("", "f", "<cmd>lua require'hop'.hint_char1()<cr>", { desc = "Hop keyword" })

    -- Pattern Matching with t keyword
    keymap.set("n", "t", "<cmd>HopPattern<CR>", { desc = "Hop patterns", noremap = true })
  end,
}

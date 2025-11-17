-- Provider settings
vim.g.avante_provider = "anthropic"
vim.g.avante_anthropic_api_key = os.getenv("ANTHROPIC_API_KEY")
vim.g.avante_anthropic_model = "claude-4-5-haiku-latest"

-- UI / behavior tuning
vim.g.avante_auto_focus_sidebar = true
vim.g.avante_show_diffs_inline = true
vim.g.avante_diff_strategy = "inline" -- or "popup"

-- Keybinds
vim.keymap.set("v", "<leader>aa", ":AvanteAsk<CR>",      { desc = "Ask Claude" })
vim.keymap.set("v", "<leader>ar", ":AvanteRewrite<CR>",  { desc = "Rewrite" })
vim.keymap.set("v", "<leader>af", ":AvanteFix<CR>",      { desc = "Fix code" })
vim.keymap.set("v", "<leader>aR", ":AvanteRefactor<CR>", { desc = "Refactor" })
vim.keymap.set("n", "<leader>ac", ":AvanteChatToggle<CR>", { desc = "Toggle Avante chat" })

-- Quality-of-life settings
vim.g.avante_enable_code_folding = false
vim.g.avante_enable_auto_explain = false


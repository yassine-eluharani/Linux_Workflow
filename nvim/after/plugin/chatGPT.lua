local chatGPT_setup, chatGPT = pcall(require, "chatgpt")
if not chatGPT_setup then
	return
end
-- configure autopairs
chatGPT.setup({
	keymaps = {
		close = { "<C-c>" },
		yank_last = "<C-y>",
		yank_last_code = "<C-k>",
		scroll_up = "<C-u>",
		scroll_down = "<C-d>",
		new_session = "<C-n>",
		cycle_windows = "<Tab>",
		cycle_modes = "<C-f>",
		select_session = "<Space>",
		rename_session = "r",
		delete_session = "d",
		draft_message = "<C-d>",
		toggle_settings = "<C-o>",
		toggle_message_role = "<C-r>",
		toggle_system_role_open = "<C-s>",
	},
	-- openai_params = {
	--   model = "gpt-3.5-turbo",
	--   frequency_penalty = 0,
	--   presence_penalty = 0,
	--   max_tokens = 300,
	--   temperature = 0,
	--   top_p = 1,
	--   n = 1,
	-- },
	popup_input = {
		prompt = "  ",
		border = {
			highlight = "FloatBorder",
			style = "rounded",
			text = {
				top_align = "center",
				top = " Prompt ",
			},
		},
		win_options = {
			winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
		},
		submit = "<Enter>",
		submit_n = "<S-Enter>",
	},
})

vim.keymap.set("n", "<Leader>cg", "<cmd>:ChatGPT<cr>")
vim.keymap.set("n", "<Leader>ga", "<cmd>:ChatGPTActAs<cr>")
vim.keymap.set("n", "<Leader>cc", "<cmd>:ChatGPTCompleteCode<cr>")

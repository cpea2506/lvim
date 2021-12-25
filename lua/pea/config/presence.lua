local M = {}

M.config = function()
	local status_ok, presence = pcall(require, "presence")

	if not presence then
		return
	end

	presence:setup({
		auto_update = true,
		neovim_image_text = "NeoVim, not Vim pls!",
		main_image = "file",
		client_id = "914799712794705961",
		buttons = true,
	})
end

return M

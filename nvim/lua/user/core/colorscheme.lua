-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
--     vim.notify("colorscheme " .. colorscheme .. " not found!")
--     return
-- end

-- local colorscheme = "tokyonight"
-- local colorscheme = "default"
local colorscheme = "nightfly"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

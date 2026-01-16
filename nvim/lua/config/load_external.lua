-- Define the path to your local file
--
local local_config = vim.fn.expand("$HOME/vim.lua")

local title = "Loading " .. local_config
-- Check if the file exists and is readable
if vim.loop.fs_stat(local_config) then
	local status_ok, _ = pcall(dofile, local_config)
	if status_ok then
		vim.notify("Loaded", vim.log.levels.INFO, { title = title })
	else
		vim.notify("Failed", vim.log.levels.WARN, { title = title })
	end
else
	vim.notify("Not found", vim.log.levels.WARN, { title = title })
end

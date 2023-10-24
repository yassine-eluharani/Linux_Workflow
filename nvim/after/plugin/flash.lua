local setup, flash = pcall(require, "flash")
if not setup then
	return
end

flash.setup()

function ColorMyPencils(color)
	--set colorscheme to color or default
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	-- set bg transparency
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()



require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNCFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNCFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "TreesitterContext", {  bg = "none" })

end

ColorMyPencils()

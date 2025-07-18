local options = {
	backup = false,
	number = true,
	relativenumber = true,
	swapfile = false,
	undofile = true,
	termguicolors = true,
	completeopt = { "menu", "menuone", "noselect" },
	smartindent = true,
	smartcase = true,
	ignorecase = true,
	wrap = false,
	errorbells = false,
	incsearch = true,
	clipboard = "unnamedplus",
	fileencoding = "utf8",
	showmode = false,
	hlsearch = false,
	autoindent = true,
	smarttab = true,
	expandtab = false,
	autoread = true,
	endofline = false,
	fixendofline = false,
	autowrite = true,
	splitbelow = true,
	splitright = true,
	tabstop = 4,
	shiftwidth = 4,
	softtabstop = 4,
	scrolloff = 8,
	cmdheight = 1,
	showtabline = 0,
	laststatus = 2,
	hidden = true,
	updatetime = 300,
}

for i, j in pairs(options) do
	vim.opt[i] = j
end

vim.cmd("let g:netrw_liststyle = 3")

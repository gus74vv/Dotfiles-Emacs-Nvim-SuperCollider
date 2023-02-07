local function scstatus()
	if vim.bo.filetype == "supercollider" then
		local stat = vim.fn["scnvim#statusline#server_status"]()
		stat = stat:gsub("%%", "♪")
		return stat
	else
		return ""
	end
end

-- local function hello()
--   return [[unix]]
-- end

require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'no-clown-fiesta', --no-clown-fiesta
		component_separators = { left = '|', right = '|'}, -- { left = '', right = ''},
		section_separators = { left = '|', right = '|'},  --{ left = '', right = ''},
		disabled_filetypes = {},
		always_divide_middle = true,
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = { 'filename', scstatus},
		lualine_x = {'filetype'}, --hello, 'encoding','
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	extensions = {}
}

-- local util = require("lspconfig.util")

local confs = {
	filetypes = {'javascript', 'javascriptreact', 'vue', 'json'}
}

require("lspconfig").volar.setup{confs}

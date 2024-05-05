-- require("fan.jdtls")
local config = {
	cmd = {'/usr/bin/jdtls'},
	filetypes = {'java'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}

print(config.root_dir)

require('jdtls').start_or_attach(config)
